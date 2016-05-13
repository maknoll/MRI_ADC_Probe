################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/adc.c \
../Src/dma.c \
../Src/gpio.c \
../Src/main.c \
../Src/me_tabs.c \
../Src/opamp.c \
../Src/spi.c \
../Src/stm32f3xx_hal_msp.c \
../Src/stm32f3xx_it.c \
../Src/system_stm32f3xx.c \
../Src/tim.c \
../Src/usart.c 

S_UPPER_SRCS += \
../Src/startup_stm32f303xc.S 

OBJS += \
./Src/adc.o \
./Src/dma.o \
./Src/gpio.o \
./Src/main.o \
./Src/me_tabs.o \
./Src/opamp.o \
./Src/spi.o \
./Src/startup_stm32f303xc.o \
./Src/stm32f3xx_hal_msp.o \
./Src/stm32f3xx_it.o \
./Src/system_stm32f3xx.o \
./Src/tim.o \
./Src/usart.o 

S_UPPER_DEPS += \
./Src/startup_stm32f303xc.d 

C_DEPS += \
./Src/adc.d \
./Src/dma.d \
./Src/gpio.d \
./Src/main.d \
./Src/me_tabs.d \
./Src/opamp.d \
./Src/spi.d \
./Src/stm32f3xx_hal_msp.d \
./Src/stm32f3xx_it.d \
./Src/system_stm32f3xx.d \
./Src/tim.d \
./Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DUSE_HAL_DRIVER -D'__weak=__attribute__((weak))' -D'__packed=__attribute__((__packed__))' -DSTM32F303xC -I"/Users/martin/Documents/MRI_ADC_Probe/firmware/Inc" -I"/Users/martin/Documents/MRI_ADC_Probe/firmware/Drivers/STM32F3xx_HAL_Driver/Inc/Legacy" -I"/Users/martin/Documents/MRI_ADC_Probe/firmware/Drivers/CMSIS/Include" -I"/Users/martin/Documents/MRI_ADC_Probe/firmware/Drivers/CMSIS/Device/ST/STM32F3xx/Include" -I"/Users/martin/Documents/MRI_ADC_Probe/firmware/Drivers/STM32F3xx_HAL_Driver/Inc" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Src/%.o: ../Src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


