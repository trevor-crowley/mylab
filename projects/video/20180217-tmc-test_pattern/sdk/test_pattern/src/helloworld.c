/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

// #include <stdio.h>
#include <xil_io.h>
#include "platform.h"
#include "xil_printf.h"
#include "xv_tpg.h"
#include "xparameters.h"


int main()
{
	uint32_t status, height, width;
	static XV_tpg ptpg0;

    init_platform();

    print("\n\rStart...\n\r");

    print("Setup TPG 1:\n\r");


    status = XV_tpg_Initialize(&ptpg0, XPAR_V_TPG_0_DEVICE_ID);
    status = XV_tpg_IsReady(&ptpg0);
    xil_printf("Status1 IsReady? %u \n\r", (unsigned int) status);
    status = XV_tpg_IsIdle(&ptpg0);
    xil_printf("Status1 IsIdle? %u \n\r", (unsigned int) status);
    XV_tpg_Set_height(&ptpg0, (u32)600);
    XV_tpg_Set_width(&ptpg0, (u32)800);
    height = XV_tpg_Get_height(&ptpg0);
    width = XV_tpg_Get_width(&ptpg0);
    XV_tpg_Set_colorFormat(&ptpg0,0);
    XV_tpg_Set_maskId(&ptpg0, 0x0);
    XV_tpg_Set_motionSpeed(&ptpg0, 0x4);
    xil_printf("info from tpg1 H%uxW%u \n\r", (unsigned int)height, (unsigned int)width);
    XV_tpg_Set_bckgndId(&ptpg0, XTPG_BKGND_COLOR_BARS);
    status = XV_tpg_Get_bckgndId(&ptpg0);
    xil_printf("Status1 Background %x \n\r", (unsigned int) status);


    status = XV_tpg_IsReady(&ptpg0);
    xil_printf("Status1 IsReady? %u \n\r", (unsigned int) status);
    status = XV_tpg_IsIdle(&ptpg0);
    xil_printf("Status1 IsIdle? %u \n\r", (unsigned int) status);


    print("Ready?\n\r");
    inbyte();

    XV_tpg_EnableAutoRestart(&ptpg0);
    XV_tpg_Start(&ptpg0);

    status = XV_tpg_IsReady(&ptpg0);
    xil_printf("Status1 IsReady? %u \n\r", (unsigned int) status);
    status = XV_tpg_IsIdle(&ptpg0);
    xil_printf("Status1 IsIdle? %u \n\r", (unsigned int) status);

    inbyte();
    print("Done!\n\r");

    cleanup_platform();

    return 0;
}
