################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_cortex.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_dma.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ex.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ramfunc.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_gpio.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_iwdg.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr_ex.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc_ex.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_spi.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim_ex.c \
../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_uart.c 

OBJS += \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_cortex.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_dma.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ex.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ramfunc.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_gpio.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_iwdg.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr_ex.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc_ex.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_spi.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim_ex.o \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_uart.o 

C_DEPS += \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_cortex.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_dma.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ex.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ramfunc.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_gpio.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_iwdg.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr_ex.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc_ex.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_spi.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim_ex.d \
./Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_cortex.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_cortex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_cortex.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_dma.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_dma.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ex.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ex.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ramfunc.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ramfunc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_flash_ramfunc.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_gpio.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_gpio.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_iwdg.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_iwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_iwdg.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr_ex.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_pwr_ex.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc_ex.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_rcc_ex.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_spi.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_spi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_spi.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim_ex.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_tim_ex.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_uart.o: ../Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_uart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L151xB -DDEBUG -c -I../Drivers/CMSIS/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L1xx/Include -I../Drivers/STM32L1xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L1xx_HAL_Driver/Src/stm32l1xx_hal_uart.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
