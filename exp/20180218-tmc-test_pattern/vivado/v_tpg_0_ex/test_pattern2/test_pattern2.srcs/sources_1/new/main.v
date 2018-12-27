`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2018 01:20:16 PM
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main (
 reset,
 sys_clock,
 usb_uart_rxd,
 usb_uart_txd, 
 Hsync,
 Vsync,
 vgaRed,
 vgaBlue,
 vgaGreen);

input wire reset;
input wire sys_clock;
input wire usb_uart_rxd;
output wire usb_uart_txd;
output wire Hsync;
output wire Vsync;
output wire [3:0] vgaRed;
output wire [3:0] vgaBlue;
output wire [3:0] vgaGreen;


wire video_out;
wire [23:0] video_data;


  design_1_wrapper design_1_wrapper_i
       (.reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vid_io_out_0_active_video(video_out),
        .vid_io_out_0_data(video_data),
        .vid_io_out_0_hsync(Hsync),
        .vid_io_out_0_vsync(Vsync));

endmodule
