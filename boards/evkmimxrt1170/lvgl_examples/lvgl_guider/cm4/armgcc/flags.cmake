SET(CMAKE_ASM_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG " \
    ${CMAKE_ASM_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG} \
    -D__STARTUP_CLEAR_BSS \
    -D__STARTUP_INITIALIZE_RAMFUNCTION \
    -DDEBUG \
    -D__STARTUP_INITIALIZE_NONCACHEDATA \
    -g \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_ASM_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE " \
    ${CMAKE_ASM_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE} \
    -D__STARTUP_CLEAR_BSS \
    -D__STARTUP_INITIALIZE_RAMFUNCTION \
    -DNDEBUG \
    -D__STARTUP_INITIALIZE_NONCACHEDATA \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_C_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG " \
    ${CMAKE_C_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG} \
    -DXIP_EXTERNAL_FLASH=1 \
    -DXIP_BOOT_HEADER_ENABLE=0 \
    -DXIP_BOOT_HEADER_DCD_ENABLE=0 \
    -DUSE_SDRAM \
    -DDATA_SECTION_IS_CACHEABLE=1 \
    -DDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DLV_CONF_INCLUDE_SIMPLE=1 \
    -DLV_DEMO_CONF_INCLUDE_SIMPLE=1 \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -DVG_RESOLVE_ENGINE=0 \
    -DVG_PE_COLOR_KEY=0 \
    -DVG_IM_INDEX_FORMAT=0 \
    -DVG_AYUV_INPUT_OUTPUT=0 \
    -DVG_DOUBLE_IMAGE=0 \
    -DVG_RECTANGLE_STRIP_MODE=0 \
    -DVG_MMU=0 \
    -DVG_IM_FILTER=0 \
    -DVG_IM_YUV_PACKET=1 \
    -DVG_IM_YUV_PLANAR=0 \
    -DVG_PE_YUV_PACKET=1 \
    -DVG_TARGET_TILED=1 \
    -DVG_COMMAND_CALL=1 \
    -DVG_SHARE_BUFFER_IM_16K=0 \
    -DVG_OFFLINE_MODE=0 \
    -DVG_RESOLUTION_2880=0 \
    -DVG_PE_PREMULTIPLY=0 \
    -DVG_POST_CONVERTER=0 \
    -DVG_PRE_CONVERTER=0 \
    -DVG_RENDER_BY_MESH=0 \
    -DVG_TARGET_FAST_CLEAR=0 \
    -DVG_BUFFER_NUMBER_OF_TARGET=0 \
    -DVG_VIDEO_CLEAR_CONTROL=0 \
    -DVG_VIDEO_CONTROL=0 \
    -DVGLITE_TST_FIRMWARE=0 \
    -DVG_LITE_SYS_GPU_CTRL=0 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DSDK_OS_FREE_RTOS \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -Wno-format \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_C_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE " \
    ${CMAKE_C_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE} \
    -DXIP_EXTERNAL_FLASH=1 \
    -DXIP_BOOT_HEADER_ENABLE=0 \
    -DXIP_BOOT_HEADER_DCD_ENABLE=0 \
    -DUSE_SDRAM \
    -DDATA_SECTION_IS_CACHEABLE=1 \
    -DNDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DLV_CONF_INCLUDE_SIMPLE=1 \
    -DLV_DEMO_CONF_INCLUDE_SIMPLE=1 \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -DVG_RESOLVE_ENGINE=0 \
    -DVG_PE_COLOR_KEY=0 \
    -DVG_IM_INDEX_FORMAT=0 \
    -DVG_AYUV_INPUT_OUTPUT=0 \
    -DVG_DOUBLE_IMAGE=0 \
    -DVG_RECTANGLE_STRIP_MODE=0 \
    -DVG_MMU=0 \
    -DVG_IM_FILTER=0 \
    -DVG_IM_YUV_PACKET=1 \
    -DVG_IM_YUV_PLANAR=0 \
    -DVG_PE_YUV_PACKET=1 \
    -DVG_TARGET_TILED=1 \
    -DVG_COMMAND_CALL=1 \
    -DVG_SHARE_BUFFER_IM_16K=0 \
    -DVG_OFFLINE_MODE=0 \
    -DVG_RESOLUTION_2880=0 \
    -DVG_PE_PREMULTIPLY=0 \
    -DVG_POST_CONVERTER=0 \
    -DVG_PRE_CONVERTER=0 \
    -DVG_RENDER_BY_MESH=0 \
    -DVG_TARGET_FAST_CLEAR=0 \
    -DVG_BUFFER_NUMBER_OF_TARGET=0 \
    -DVG_VIDEO_CLEAR_CONTROL=0 \
    -DVG_VIDEO_CONTROL=0 \
    -DVGLITE_TST_FIRMWARE=0 \
    -DVG_LITE_SYS_GPU_CTRL=0 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DSDK_OS_FREE_RTOS \
    -DMCUXPRESSO_SDK \
    -Os \
    -Wno-format \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_CXX_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG " \
    ${CMAKE_CXX_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG} \
    -DDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -Wno-format \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -fno-rtti \
    -fno-exceptions \
")
SET(CMAKE_CXX_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE " \
    ${CMAKE_CXX_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE} \
    -DNDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DMCUXPRESSO_SDK \
    -Os \
    -Wno-format \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -fno-rtti \
    -fno-exceptions \
")
SET(CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG " \
    ${CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_SDRAM_DEBUG} \
    -g \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    --specs=nano.specs \
    --specs=nosys.specs \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mthumb \
    -mapcs \
    -Xlinker \
    --gc-sections \
    -Xlinker \
    -static \
    -Xlinker \
    -z \
    -Xlinker \
    muldefs \
    -Xlinker \
    -Map=output.map \
    -Wl,--print-memory-usage \
    -T${ProjDirPath}/MIMXRT1176xxxxx_cm4_flexspi_nor_sdram.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE " \
    ${CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_SDRAM_RELEASE} \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    --specs=nano.specs \
    --specs=nosys.specs \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mthumb \
    -mapcs \
    -Xlinker \
    --gc-sections \
    -Xlinker \
    -static \
    -Xlinker \
    -z \
    -Xlinker \
    muldefs \
    -Xlinker \
    -Map=output.map \
    -Wl,--print-memory-usage \
    -T${ProjDirPath}/MIMXRT1176xxxxx_cm4_flexspi_nor_sdram.ld -static \
")