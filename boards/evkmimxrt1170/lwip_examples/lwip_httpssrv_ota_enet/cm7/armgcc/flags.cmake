SET(CMAKE_ASM_FLAGS_FLEXSPI_NOR_DEBUG " \
    ${CMAKE_ASM_FLAGS_FLEXSPI_NOR_DEBUG} \
    -D__STARTUP_CLEAR_BSS \
    -DDEBUG \
    -D__STARTUP_INITIALIZE_NONCACHEDATA \
    -g \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
    -mthumb \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_ASM_FLAGS_FLEXSPI_NOR_RELEASE " \
    ${CMAKE_ASM_FLAGS_FLEXSPI_NOR_RELEASE} \
    -D__STARTUP_CLEAR_BSS \
    -DNDEBUG \
    -D__STARTUP_INITIALIZE_NONCACHEDATA \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
    -mthumb \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_C_FLAGS_FLEXSPI_NOR_DEBUG " \
    ${CMAKE_C_FLAGS_FLEXSPI_NOR_DEBUG} \
    -DXIP_EXTERNAL_FLASH=1 \
    -DXIP_BOOT_HEADER_ENABLE=1 \
    -DDEBUG \
    -D_POSIX_SOURCE \
    -DLWIP_TIMEVAL_PRIVATE=0 \
    -DCPU_MIMXRT1176DVMAA_cm7 \
    -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE \
    -DMBEDTLS_SSL_CIPHERSUITES=MBEDTLS_TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 \
    -DFSL_SDK_ENABLE_DRIVER_CACHE_CONTROL=1 \
    -DLWIP_ENET_FLEXIBLE_CONFIGURATION \
    -DUSE_RTOS=1 \
    -DPRINTF_ADVANCED_ENABLE=1 \
    -DHTTPSRV_CFG_WEBSOCKET_ENABLED=0 \
    -DHTTPSRV_CFG_MBEDTLS_ENABLE=1 \
    -DHTTPSRV_CFG_DEFAULT_SES_CNT=8 \
    -DMFLASH_FILE_BASEADDR=14221312 \
    -DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DCRYPTO_USE_DRIVER_CAAM \
    -DSDK_OS_FREE_RTOS \
    -DMCUXPRESSO_SDK \
    -Og \
    -g \
    -fomit-frame-pointer \
    -Wno-unused-function \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
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
SET(CMAKE_C_FLAGS_FLEXSPI_NOR_RELEASE " \
    ${CMAKE_C_FLAGS_FLEXSPI_NOR_RELEASE} \
    -DXIP_EXTERNAL_FLASH=1 \
    -DXIP_BOOT_HEADER_ENABLE=1 \
    -DNDEBUG \
    -D_POSIX_SOURCE \
    -DLWIP_TIMEVAL_PRIVATE=0 \
    -DCPU_MIMXRT1176DVMAA_cm7 \
    -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE \
    -DMBEDTLS_SSL_CIPHERSUITES=MBEDTLS_TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 \
    -DFSL_SDK_ENABLE_DRIVER_CACHE_CONTROL=1 \
    -DLWIP_ENET_FLEXIBLE_CONFIGURATION \
    -DUSE_RTOS=1 \
    -DPRINTF_ADVANCED_ENABLE=1 \
    -DHTTPSRV_CFG_WEBSOCKET_ENABLED=0 \
    -DHTTPSRV_CFG_MBEDTLS_ENABLE=1 \
    -DHTTPSRV_CFG_DEFAULT_SES_CNT=8 \
    -DMFLASH_FILE_BASEADDR=14221312 \
    -DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DCRYPTO_USE_DRIVER_CAAM \
    -DSDK_OS_FREE_RTOS \
    -DMCUXPRESSO_SDK \
    -Os \
    -fomit-frame-pointer \
    -Wno-unused-function \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
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
SET(CMAKE_CXX_FLAGS_FLEXSPI_NOR_DEBUG " \
    ${CMAKE_CXX_FLAGS_FLEXSPI_NOR_DEBUG} \
    -DDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm7 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
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
SET(CMAKE_CXX_FLAGS_FLEXSPI_NOR_RELEASE " \
    ${CMAKE_CXX_FLAGS_FLEXSPI_NOR_RELEASE} \
    -DNDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm7 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
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
SET(CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_DEBUG " \
    ${CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_DEBUG} \
    -g \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
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
    -Xlinker \
    --defsym=__stack_size__=1000 \
    -Xlinker \
    --defsym=__heap_size__=100000 \
    -T${ProjDirPath}/MIMXRT1176xxxxx_cm7_flexspi_nor.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_RELEASE " \
    ${CMAKE_EXE_LINKER_FLAGS_FLEXSPI_NOR_RELEASE} \
    -mcpu=cortex-m7 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-d16 \
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
    -Xlinker \
    --defsym=__stack_size__=1000 \
    -Xlinker \
    --defsym=__heap_size__=100000 \
    -T${ProjDirPath}/MIMXRT1176xxxxx_cm7_flexspi_nor.ld -static \
")
