// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// cmd
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of re_V
//        bit 17~0 - re_V[17:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of im_V
//        bit 17~0 - im_V[17:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of zoom_factor_V
//        bit 17~0 - zoom_factor_V[17:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_AP_CTRL            0x00
#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_GIE                0x04
#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IER                0x08
#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_ISR                0x0c
#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_RE_V_DATA          0x10
#define XVIDEO_MANDELBROT_GENERATOR_CMD_BITS_RE_V_DATA          18
#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_IM_V_DATA          0x18
#define XVIDEO_MANDELBROT_GENERATOR_CMD_BITS_IM_V_DATA          18
#define XVIDEO_MANDELBROT_GENERATOR_CMD_ADDR_ZOOM_FACTOR_V_DATA 0x20
#define XVIDEO_MANDELBROT_GENERATOR_CMD_BITS_ZOOM_FACTOR_V_DATA 18

