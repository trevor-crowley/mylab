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

/***************************** Include Files *********************************/

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

/************************** Constant Definitions *****************************/

#define SEG_LED_AN 15   /* Assumes bit 0 of GPIO is connected to an LED  */

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
//#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID

/*
 * The following constant is used to wait after an LED is turned on to make
 * sure that it is visible to the human eye.  This constant might need to be
 * tuned for faster or slower processor speeds.
 */
#define LED_DELAY     1000000

/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define SEG_LED_AN_CHANNEL 1
#define SEG_LED_DISP_CHANNEL 2

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/

#ifdef PRE_2_00A_APPLICATION

/*
 * The following macros are provided to allow an application to compile that
 * uses an older version of the driver (pre 2.00a) which did not have a channel
 * parameter. Note that the channel parameter is fixed as channel 1.
 */
#define XGpio_SetDataDirection(InstancePtr, DirectionMask) \
        XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr) \
        XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask) \
        XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask) \
        XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif

/************************** Function Prototypes ******************************/


/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio Gpio; /* The Instance of the GPIO Driver */

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the GPIO
* driver to turn on and off an LED.
*
* @param	None
*
* @return	XST_FAILURE to indicate that the GPIO Initialization had
*		failed.
*
* @note		This function will not return if the test is running.
*
******************************************************************************/

int main()
{
    init_platform();

int Status;
volatile int Delay;
volatile int mask = 0;

print("Hello World !!\n\r");

/* Initialize the GPIO driver */
Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
if (Status != XST_SUCCESS) {
	xil_printf("Gpio Initialization Failed\r\n");
	return XST_FAILURE;
}

/* Set the direction for all signals as inputs except the LED output */
XGpio_SetDataDirection(&Gpio, SEG_LED_AN_CHANNEL, ~SEG_LED_AN);
XGpio_SetDataDirection(&Gpio, SEG_LED_DISP_CHANNEL, ~255);

/* Loop forever blinking the LED */
XGpio_DiscreteClear(&Gpio, SEG_LED_AN_CHANNEL, SEG_LED_AN);

while (1) {
	/* Set the LED to High */
	//XGpio_DiscreteWrite(&Gpio, SEG_LED_AN_CHANNEL, SEG_LED_AN);
	XGpio_DiscreteWrite(&Gpio, SEG_LED_DISP_CHANNEL, mask);

	/* Wait a small amount of time so the LED is visible */
	for (Delay = 0; Delay < LED_DELAY; Delay++);

	/* Clear the LED bit */
	//XGpio_DiscreteClear(&Gpio, SEG_LED_AN_CHANNEL, SEG_LED_AN);
//	XGpio_DiscreteClear(&Gpio, SEG_LED_DISP_CHANNEL, mask);

	/* Wait a small amount of time so the LED is visible */
	for (Delay = 0; Delay < LED_DELAY; Delay++);

	mask++;
}

xil_printf("Successfully ran Gpio Example\r\n");

cleanup_platform();

return XST_SUCCESS;

}
