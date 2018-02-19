`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2018 06:55:44 PM
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


module main
   (output wire Hsync,
    output wire Vsync,
    input wire reset,
    input wire sys_clock,
    input wire usb_uart_rxd,
    output wire usb_uart_txd,
    output wire [3:0] vgaGreen,
    output wire [3:0] vgaBlue,
    output wire [3:0] vgaRed
 );

 

  design_1_wrapper design_1_wrapper_i
       (.Hsync(Hsync),
   .Vsync(Vsync),
   .reset(reset),
   .sys_clock(sys_clock),
   .usb_uart_rxd(usb_uart_rxd),
   .usb_uart_txd(usb_uart_txd),
   .vgaBlue(vgaBlue),
   .vgaGreen(vgaGreen),
   .vgaRed(vgaRed));
   
//   always @(posedge sys_clock, posedge reset)
//        if(reset)
//            rgb_reg = 0;
//        else
//            rgb_reg = sw;
     
//   assign vgaRGB = active_video_out ? rgb_reg : 12'b0;
//    assign led[0] = locked;
//    assign led[1] = overflow;
//    assign led[2] = underflow;
//    assign led[4] = vtg_ce;
    
//    assign vgaRGB = active_video_out ? {{vid_data[23:20]},{vid_data[15:12]},{vid_data[7:4]}} : 12'b0;
    
endmodule
