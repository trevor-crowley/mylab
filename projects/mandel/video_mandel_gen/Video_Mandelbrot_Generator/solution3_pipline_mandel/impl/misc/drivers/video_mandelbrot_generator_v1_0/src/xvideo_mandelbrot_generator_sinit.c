// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvideo_mandelbrot_generator.h"

extern XVideo_mandelbrot_generator_Config XVideo_mandelbrot_generator_ConfigTable[];

XVideo_mandelbrot_generator_Config *XVideo_mandelbrot_generator_LookupConfig(u16 DeviceId) {
	XVideo_mandelbrot_generator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVIDEO_MANDELBROT_GENERATOR_NUM_INSTANCES; Index++) {
		if (XVideo_mandelbrot_generator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVideo_mandelbrot_generator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVideo_mandelbrot_generator_Initialize(XVideo_mandelbrot_generator *InstancePtr, u16 DeviceId) {
	XVideo_mandelbrot_generator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVideo_mandelbrot_generator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVideo_mandelbrot_generator_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

