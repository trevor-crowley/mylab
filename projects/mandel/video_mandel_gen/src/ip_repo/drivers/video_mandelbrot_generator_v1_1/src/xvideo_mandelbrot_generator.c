// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvideo_mandelbrot_generator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVideo_mandelbrot_generator_CfgInitialize(XVideo_mandelbrot_generator *InstancePtr, XVideo_mandelbrot_generator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Cmd_BaseAddress = ConfigPtr->Cmd_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVideo_mandelbrot_generator_Start(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL) & 0x80;
    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVideo_mandelbrot_generator_IsDone(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVideo_mandelbrot_generator_IsIdle(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVideo_mandelbrot_generator_IsReady(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVideo_mandelbrot_generator_EnableAutoRestart(XVideo_mandelbrot_generator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL, 0x80);
}

void XVideo_mandelbrot_generator_DisableAutoRestart(XVideo_mandelbrot_generator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL, 0);
}

void XVideo_mandelbrot_generator_Set_re_V(XVideo_mandelbrot_generator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_RE_V_DATA, Data);
}

u32 XVideo_mandelbrot_generator_Get_re_V(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_RE_V_DATA);
    return Data;
}

void XVideo_mandelbrot_generator_Set_im_V(XVideo_mandelbrot_generator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IM_V_DATA, Data);
}

u32 XVideo_mandelbrot_generator_Get_im_V(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IM_V_DATA);
    return Data;
}

void XVideo_mandelbrot_generator_Set_zoom_factor_V(XVideo_mandelbrot_generator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_ZOOM_FACTOR_V_DATA, Data);
}

u32 XVideo_mandelbrot_generator_Get_zoom_factor_V(XVideo_mandelbrot_generator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_ZOOM_FACTOR_V_DATA);
    return Data;
}

void XVideo_mandelbrot_generator_InterruptGlobalEnable(XVideo_mandelbrot_generator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_GIE, 1);
}

void XVideo_mandelbrot_generator_InterruptGlobalDisable(XVideo_mandelbrot_generator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_GIE, 0);
}

void XVideo_mandelbrot_generator_InterruptEnable(XVideo_mandelbrot_generator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IER);
    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IER, Register | Mask);
}

void XVideo_mandelbrot_generator_InterruptDisable(XVideo_mandelbrot_generator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IER);
    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IER, Register & (~Mask));
}

void XVideo_mandelbrot_generator_InterruptClear(XVideo_mandelbrot_generator *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_mandelbrot_generator_WriteReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_ISR, Mask);
}

u32 XVideo_mandelbrot_generator_InterruptGetEnabled(XVideo_mandelbrot_generator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IER);
}

u32 XVideo_mandelbrot_generator_InterruptGetStatus(XVideo_mandelbrot_generator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVideo_mandelbrot_generator_ReadReg(InstancePtr->Cmd_BaseAddress, XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_ISR);
}

