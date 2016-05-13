################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.c \
../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.c 

OBJS += \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.o \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.o 

C_DEPS += \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_f32.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q15.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_init_q31.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_f32.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q15.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_pid_reset_q31.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_f32.d \
./Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/arm_sin_cos_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/%.o: ../Drivers/CMSIS/DSP_Lib/Source/ControllerFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv6-m -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F303xC -I"/Users/martin/Developer/ADC/Inc" -I"/Users/martin/Developer/ADC/Drivers/CMSIS/Include" -I"/Users/martin/Developer/ADC/Drivers/CMSIS/Device/ST/STM32F3xx/Include" -I"/Users/martin/Developer/ADC/Drivers/STM32F3xx_HAL_Driver/Inc" -include"/Users/martin/Developer/ADC/Inc/stm32f3xx_hal_conf.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


