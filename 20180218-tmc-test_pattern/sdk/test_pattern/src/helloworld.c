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

//#include <stdio.h>

#include "xil_io.h"
#include <xil_printf.h>
#include <xv_tpg.h>
#include "platform.h"
#include "xparameters.h"


int main()
{
	uint32_t status, height, width;

	height = 600;
	width = 800;

    init_platform();


    print("Hello World\n\r");

    // setting up TPG_0
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0x10, height);
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0x18, width);
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0x20, 0x0f);
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0x98, 0x01);
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0xb0, 0x100);
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0xb8, 0x100);

    // setting up TPG_1
    Xil_Out32(XPAR_XV_TPG_1_S_AXI_CTRL_BASEADDR + 0x10, height);
    Xil_Out32(XPAR_XV_TPG_1_S_AXI_CTRL_BASEADDR + 0x18, width);
    Xil_Out32(XPAR_XV_TPG_1_S_AXI_CTRL_BASEADDR + 0x20, 0x09);
    Xil_Out32(XPAR_XV_TPG_1_S_AXI_CTRL_BASEADDR + 0x98, 0x01);

    // start vtc
    Xil_Out32(XPAR_V_TC_0_BASEADDR + 0x00, 0x01);


    // wait for lock

    inbyte();

    // turn on test
    Xil_Out32(XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR + 0x00, 0x81);
    Xil_Out32(XPAR_XV_TPG_1_S_AXI_CTRL_BASEADDR + 0x00, 0x81);



/*
     mst_agent.AXI4LITE_WRITE_BURST ('h44a10010, 0,  height,       mBresp ); //height
     mst_agent.AXI4LITE_WRITE_BURST ('h44a10018, 0,  width,        mBresp ); //width
     mst_agent.AXI4LITE_WRITE_BURST ('h44a10020, 0, 'h0000000f,    mBresp ); //bckgndId
     mst_agent.AXI4LITE_WRITE_BURST ('h44a10098, 0, 'h00000001,    mBresp ); //enable_input
     mst_agent.AXI4LITE_WRITE_BURST ('h44a100b0, 0, 'h00000100,    mBresp ); //passthruEndX
     mst_agent.AXI4LITE_WRITE_BURST ('h44a100b8, 0, 'h00000100,    mBresp ); //passthruEndY

     // setting up TPG_0
     mst_agent.AXI4LITE_WRITE_BURST('h44a00010, 0,  height,       mBresp ); //height
     mst_agent.AXI4LITE_WRITE_BURST('h44a00018, 0,  width,        mBresp ); //width
     mst_agent.AXI4LITE_WRITE_BURST('h44a00020, 0, 'h0000000a,    mBresp ); //bckgndId

    mst_agent.AXI4LITE_WRITE_BURST ('h44a00000, 0, 'h00000081, mBresp ); // start the TPG_0
    mst_agent.AXI4LITE_WRITE_BURST ('h44a10000, 0, 'h00000081, mBresp ); //start the TPG_1

*/


//    cleanup_platform();
    return 0;
}
