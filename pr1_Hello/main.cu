#include <stdio.h>

#include "cuda_runtime.h"
#include "device_launch_parameters.h"

__global__ void cuda_hello() {
    printf("Hello World from GPU!\n");
}

/*
    compiling:
        nvcc main.cu -o main
    launching:
        ./main
*/

int main(int argc, char **argv) {
    printf("Hello World from CPU!\n");
    cuda_hello<<<1,10>>>();
    cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}


