SET(CMAKE_ASM_FLAGS_DEBUG " \
    ${CMAKE_ASM_FLAGS_DEBUG} \
    -DDEBUG \
    -D__STARTUP_CLEAR_BSS \
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
SET(CMAKE_ASM_FLAGS_RELEASE " \
    ${CMAKE_ASM_FLAGS_RELEASE} \
    -DNDEBUG \
    -D__STARTUP_CLEAR_BSS \
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
SET(CMAKE_C_FLAGS_DEBUG " \
    ${CMAKE_C_FLAGS_DEBUG} \
    -DDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DARM_MATH_CM4 \
    -D__FPU_PRESENT=1 \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -D__SEMIHOST_HARDFAULT_DISABLE=1 \
    -DSDK_DEBUGCONSOLE_UART \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -DBOARD_USE_CODEC=1 \
    -DCODEC_WM8960_ENABLE \
    -DTF_LITE_STATIC_MEMORY \
    -DCMSIS_NN \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -Wall \
    -Wno-strict-aliasing \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_C_FLAGS_RELEASE " \
    ${CMAKE_C_FLAGS_RELEASE} \
    -DNDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DARM_MATH_CM4 \
    -D__FPU_PRESENT=1 \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -D__SEMIHOST_HARDFAULT_DISABLE=1 \
    -DSDK_DEBUGCONSOLE_UART \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -DBOARD_USE_CODEC=1 \
    -DCODEC_WM8960_ENABLE \
    -DTF_LITE_STATIC_MEMORY \
    -DCMSIS_NN \
    -DMCUXPRESSO_SDK \
    -Os \
    -Wall \
    -Wno-strict-aliasing \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_CXX_FLAGS_DEBUG " \
    ${CMAKE_CXX_FLAGS_DEBUG} \
    -DDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DARM_MATH_CM4 \
    -D__FPU_PRESENT=1 \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -DSDK_DEBUGCONSOLE_UART \
    -DTF_LITE_STATIC_MEMORY \
    -DCMSIS_NN \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -Wall \
    -fno-rtti \
    -fno-exceptions \
    -Wno-sign-compare \
    -Wno-strict-aliasing \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -mapcs \
")
SET(CMAKE_CXX_FLAGS_RELEASE " \
    ${CMAKE_CXX_FLAGS_RELEASE} \
    -DNDEBUG \
    -DCPU_MIMXRT1176DVMAA_cm4 \
    -DARM_MATH_CM4 \
    -D__FPU_PRESENT=1 \
    -DSDK_I2C_BASED_COMPONENT_USED=1 \
    -DSDK_DEBUGCONSOLE_UART \
    -DTF_LITE_STATIC_MEMORY \
    -DCMSIS_NN \
    -DMCUXPRESSO_SDK \
    -Os \
    -Wall \
    -fno-rtti \
    -fno-exceptions \
    -Wno-sign-compare \
    -Wno-strict-aliasing \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -mapcs \
")
SET(CMAKE_EXE_LINKER_FLAGS_DEBUG " \
    ${CMAKE_EXE_LINKER_FLAGS_DEBUG} \
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
    -Xlinker \
    --defsym=__stack_size__=0x10000 \
    -Xlinker \
    --defsym=__heap_size__=0x80000 \
    -T${ProjDirPath}/MIMXRT1176xxxxx_cm4_sdram.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_RELEASE " \
    ${CMAKE_EXE_LINKER_FLAGS_RELEASE} \
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
    -Xlinker \
    --defsym=__stack_size__=0x10000 \
    -Xlinker \
    --defsym=__heap_size__=0x80000 \
    -T${ProjDirPath}/MIMXRT1176xxxxx_cm4_sdram.ld -static \
")