// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XVIDEO_MANDELBROT_GENERATOR_H
#define XVIDEO_MANDELBROT_GENERATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvideo_mandelbrot_generator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Cmd_BaseAddress;
} XVideo_mandelbrot_generator_Config;
#endif

typedef struct {
    u32 Cmd_BaseAddress;
    u32 IsReady;
} XVideo_mandelbrot_generator;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVideo_mandelbrot_generator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVideo_mandelbrot_generator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVideo_mandelbrot_generator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVideo_mandelbrot_generator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XVideo_mandelbrot_generator_Initialize(XVideo_mandelbrot_generator *InstancePtr, u16 DeviceId);
XVideo_mandelbrot_generator_Config* XVideo_mandelbrot_generator_LookupConfig(u16 DeviceId);
int XVideo_mandelbrot_generator_CfgInitialize(XVideo_mandelbrot_generator *InstancePtr, XVideo_mandelbrot_generator_Config *ConfigPtr);
#else
int XVideo_mandelbrot_generator_Initialize(XVideo_mandelbrot_generator *InstancePtr, const char* InstanceName);
int XVideo_mandelbrot_generator_Release(XVideo_mandelbrot_generator *InstancePtr);
#endif

void XVideo_mandelbrot_generator_Start(XVideo_mandelbrot_generator *InstancePtr);
u32 XVideo_mandelbrot_generator_IsDone(XVideo_mandelbrot_generator *InstancePtr);
u32 XVideo_mandelbrot_generator_IsIdle(XVideo_mandelbrot_generator *InstancePtr);
u32 XVideo_mandelbrot_generator_IsReady(XVideo_mandelbrot_generator *InstancePtr);
void XVideo_mandelbrot_generator_EnableAutoRestart(XVideo_mandelbrot_generator *InstancePtr);
void XVideo_mandelbrot_generator_DisableAutoRestart(XVideo_mandelbrot_generator *InstancePtr);

void XVideo_mandelbrot_generator_Set_re_V(XVideo_mandelbrot_generator *InstancePtr, u32 Data);
u32 XVideo_mandelbrot_generator_Get_re_V(XVideo_mandelbrot_generator *InstancePtr);
void XVideo_mandelbrot_generator_Set_im_V(XVideo_mandelbrot_generator *InstancePtr, u32 Data);
u32 XVideo_mandelbrot_generator_Get_im_V(XVideo_mandelbrot_generator *InstancePtr);
void XVideo_mandelbrot_generator_Set_zoom_factor_V(XVideo_mandelbrot_generator *InstancePtr, u32 Data);
u32 XVideo_mandelbrot_generator_Get_zoom_factor_V(XVideo_mandelbrot_generator *InstancePtr);

void XVideo_mandelbrot_generator_InterruptGlobalEnable(XVideo_mandelbrot_generator *InstancePtr);
void XVideo_mandelbrot_generator_InterruptGlobalDisable(XVideo_mandelbrot_generator *InstancePtr);
void XVideo_mandelbrot_generator_InterruptEnable(XVideo_mandelbrot_generator *InstancePtr, u32 Mask);
void XVideo_mandelbrot_generator_InterruptDisable(XVideo_mandelbrot_generator *InstancePtr, u32 Mask);
void XVideo_mandelbrot_generator_InterruptClear(XVideo_mandelbrot_generator *InstancePtr, u32 Mask);
u32 XVideo_mandelbrot_generator_InterruptGetEnabled(XVideo_mandelbrot_generator *InstancePtr);
u32 XVideo_mandelbrot_generator_InterruptGetStatus(XVideo_mandelbrot_generator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
