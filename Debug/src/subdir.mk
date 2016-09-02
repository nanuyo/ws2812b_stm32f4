################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/delay.c \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f4xx.c \
../src/ws2812.c 

OBJS += \
./src/delay.o \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f4xx.o \
./src/ws2812.o 

C_DEPS += \
./src/delay.d \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f4xx.d \
./src/ws2812.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F446RETx -DNUCLEO_F446RE -DSTM32F4 -DSTM32 -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F446xx -I"D:/hjworkspace/WS2812B_test/inc" -I"D:/hjworkspace/WS2812B_test/CMSIS/core" -I"D:/hjworkspace/WS2812B_test/CMSIS/device" -I"D:/hjworkspace/WS2812B_test/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


