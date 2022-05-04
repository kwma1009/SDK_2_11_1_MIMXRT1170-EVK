include_guard(GLOBAL)
message("middleware_usb_host_audio component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/host/class/usb_host_audio.c
)


target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/host/class
)


include(middleware_usb_host_stack_MIMXRT1176_cm7)

