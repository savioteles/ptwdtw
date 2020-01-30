################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/gpu/dtw_gpu.cpp 

CU_SRCS += \
../src/gpu/euclidean_distance.cu \
../src/gpu/euclidean_distance_fast.cu 

CU_DEPS += \
./src/gpu/euclidean_distance.d \
./src/gpu/euclidean_distance_fast.d 

OBJS += \
./src/gpu/dtw_gpu.o \
./src/gpu/euclidean_distance.o \
./src/gpu/euclidean_distance_fast.o 

CPP_DEPS += \
./src/gpu/dtw_gpu.d 


# Each subdirectory must supply rules for building sources it contributes
src/gpu/%.o: ../src/gpu/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -O3 -std=c++11 -gencode arch=compute_60,code=sm_60  -odir "src/gpu" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -O3 -std=c++11 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/gpu/%.o: ../src/gpu/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -O3 -std=c++11 -gencode arch=compute_60,code=sm_60  -odir "src/gpu" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -O3 -std=c++11 --compile --relocatable-device-code=false -gencode arch=compute_60,code=compute_60 -gencode arch=compute_60,code=sm_60  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


