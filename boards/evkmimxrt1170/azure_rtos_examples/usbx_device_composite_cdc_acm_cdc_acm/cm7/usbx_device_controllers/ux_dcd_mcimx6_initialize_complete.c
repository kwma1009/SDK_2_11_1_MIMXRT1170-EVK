/**************************************************************************/
/*                                                                        */
/*       Copyright (c) Microsoft Corporation. All rights reserved.        */
/*                                                                        */
/*       This software is licensed under the Microsoft Software License   */
/*       Terms for Microsoft Azure RTOS. Full text of the license can be  */
/*       found in the LICENSE file at https://aka.ms/AzureRTOS_EULA       */
/*       and in the root directory of this software.                      */
/*                                                                        */
/**************************************************************************/


/**************************************************************************/
/**************************************************************************/
/**                                                                       */
/** USBX Component                                                        */
/**                                                                       */
/**   MCIMX6 Controller Driver                                            */
/**                                                                       */
/**************************************************************************/
/**************************************************************************/

#define UX_SOURCE_CODE


/* Include necessary system files.  */

#include "ux_api.h"
#include "ux_system.h"
#include "ux_utility.h"
#include "ux_dcd_mcimx6.h"
#include "ux_device_stack.h"


/**************************************************************************/
/*                                                                        */
/*  FUNCTION                                                 RELEASE      */
/*                                                                        */
/*    _ux_dcd_mcimx6_initialize_complete                    PORTABLE C    */
/*                                                           6.0          */
/*  AUTHOR                                                                */
/*                                                                        */
/*    Chaoqiong Xiao, Microsoft Corporation                               */
/*                                                                        */
/*  DESCRIPTION                                                           */
/*                                                                        */
/*    This function completes the initialization of the USB slave         */
/*    controller for the FREESCALE MCU.                                   */
/*                                                                        */
/*  INPUT                                                                 */
/*                                                                        */
/*    None                                                                */
/*                                                                        */
/*  OUTPUT                                                                */
/*                                                                        */
/*    Completion Status                                                   */
/*                                                                        */
/*  CALLS                                                                 */
/*                                                                        */
/*    (ux_slave_dcd_function)               Process the DCD function      */
/*    _ux_utility_descriptor_parse          Parse descriptor              */
/*    _ux_utility_memory_allocate           Allocate memory               */
/*                                                                        */
/*  CALLED BY                                                             */
/*                                                                        */
/*    MCIMX6 Controller Driver                                            */
/*                                                                        */
/*  RELEASE HISTORY                                                       */
/*                                                                        */
/*    DATE              NAME                      DESCRIPTION             */
/*                                                                        */
/*  05-19-2020     Chaoqiong Xiao           Initial Version 6.0           */
/*                                                                        */
/**************************************************************************/
UINT  _ux_dcd_mcimx6_initialize_complete(VOID)
{

UX_SLAVE_DCD            *dcd;
UX_SLAVE_DEVICE         *device;
UCHAR                   *device_framework;
UX_SLAVE_TRANSFER       *transfer_request;


    /* Get the pointer to the DCD.  */
    dcd =  &_ux_system_slave -> ux_system_slave_dcd;

    /* Get the pointer to the device.  */
    device =  &_ux_system_slave -> ux_system_slave_device;

    /* Check the speed and set the correct descriptor.  */
    if (_ux_system_slave -> ux_system_slave_speed ==  UX_FULL_SPEED_DEVICE)
    {

        /* The device is operating at full speed.  */
        _ux_system_slave -> ux_system_slave_device_framework =  _ux_system_slave -> ux_system_slave_device_framework_full_speed;
        _ux_system_slave -> ux_system_slave_device_framework_length =  _ux_system_slave -> ux_system_slave_device_framework_length_full_speed;
    }
    else
    {

        /* The device is operating at high speed.  */
        _ux_system_slave -> ux_system_slave_device_framework =  _ux_system_slave -> ux_system_slave_device_framework_high_speed;
        _ux_system_slave -> ux_system_slave_device_framework_length =  _ux_system_slave -> ux_system_slave_device_framework_length_high_speed;
    }

    /* Get the device framework pointer.  */
    device_framework =  _ux_system_slave -> ux_system_slave_device_framework;

    /* And create the decompressed device descriptor structure.  */
    _ux_utility_descriptor_parse(device_framework,
                                _ux_system_device_descriptor_structure,
                                UX_DEVICE_DESCRIPTOR_ENTRIES,
                                (UCHAR *) &device -> ux_slave_device_descriptor);

    /* Now we create a transfer request to accept the first SETUP packet
       and get the ball running. First get the address of the endpoint
       transfer request container.  */
    transfer_request =  &device -> ux_slave_device_control_endpoint.ux_slave_endpoint_transfer_request;

    /* Set the timeout to be for Control Endpoint.  */
    transfer_request -> ux_slave_transfer_request_timeout =  MS_TO_TICK(UX_CONTROL_TRANSFER_TIMEOUT);

    /* Adjust the current data pointer as well.  */
    transfer_request -> ux_slave_transfer_request_current_data_pointer =
                            transfer_request -> ux_slave_transfer_request_data_pointer;

    /* Update the transfer request endpoint pointer with the default endpoint.  */
    transfer_request -> ux_slave_transfer_request_endpoint =  &device -> ux_slave_device_control_endpoint;

    /* The control endpoint max packet size needs to be filled manually in its descriptor.  */
    transfer_request -> ux_slave_transfer_request_endpoint -> ux_slave_endpoint_descriptor.wMaxPacketSize =
                                device -> ux_slave_device_descriptor.bMaxPacketSize0;

    /* On the control endpoint, always expect the maximum.  */
    transfer_request -> ux_slave_transfer_request_requested_length =
                                device -> ux_slave_device_descriptor.bMaxPacketSize0;

    /* Attach the control endpoint to the transfer request.  */
    transfer_request -> ux_slave_transfer_request_endpoint =  &device -> ux_slave_device_control_endpoint;

    /* Create the default control endpoint attached to the device.
       Once this endpoint is enabled, the host can then send a setup packet
       The device controller will receive it and will call the setup function
       module.  */
    dcd -> ux_slave_dcd_function(dcd, UX_DCD_CREATE_ENDPOINT,
                                    (VOID *) &device -> ux_slave_device_control_endpoint);

    /* Ensure the control endpoint is properly reset.  */
    device -> ux_slave_device_control_endpoint.ux_slave_endpoint_state = UX_ENDPOINT_RESET;

    /* A SETUP packet is a DATA IN operation.  */
    transfer_request -> ux_slave_transfer_request_phase =  UX_TRANSFER_PHASE_DATA_IN;

    /* Check the status change callback.  */
    if(_ux_system_slave -> ux_system_slave_change_function != UX_NULL)
    {

        /* Inform the application if a callback function was programmed.  */
        _ux_system_slave -> ux_system_slave_change_function(UX_DEVICE_ATTACHED);
    }

    /* If trace is enabled, insert this event into the trace buffer.  */
    UX_TRACE_IN_LINE_INSERT(UX_TRACE_DEVICE_STACK_CONNECT, 0, 0, 0, 0, UX_TRACE_DEVICE_STACK_EVENTS, 0, 0)

    /* If trace is enabled, register this object.  */
    UX_TRACE_OBJECT_REGISTER(UX_TRACE_DEVICE_OBJECT_TYPE_DEVICE, device, 0, 0, 0)

    /* We are now ready for the USB device to accept the first SETUP packet when connected.  */
    return(UX_SUCCESS);
}
