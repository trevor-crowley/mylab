`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2018 05:58:11 PM
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


module main(
 input wire reset,
 input wire sys_clock,
 input wire usb_uart_rxd,
 output wire usb_uart_txd,
 output wire Hsync,
 output wire Vsync,
 output wire [3:0] vgaRed,
 output wire [3:0] vgaGreen,
 output wire [3:0] vgaBlue
 );


wire vid_io_out_0_active_video;
wire [23:0]vid_io_out_0_data;
wire vid_io_out_0_field;
wire vid_io_out_0_hblank;
wire vid_io_out_0_vblank;

reg [23:0] vgaRGB; 

design_1_wrapper design_1_wrapper_i
    (.reset(reset),
     .sys_clock(sys_clock),
     .usb_uart_rxd(usb_uart_rxd),
     .usb_uart_txd(usb_uart_txd),
     .vid_io_out_0_active_video(vid_io_out_0_active_video),
     .vid_io_out_0_data(vid_io_out_0_data),
     .vid_io_out_0_field(vid_io_out_0_field),
     .vid_io_out_0_hblank(vid_io_out_0_hblank),
     .vid_io_out_0_hsync(Hsync),
     .vid_io_out_0_vblank(vid_io_out_0_vblank),
     .vid_io_out_0_vsync(Vsync));
     
    always @(posedge sys_clock, posedge reset)
        if (reset)
            vgaRGB <= 24'b0;
        else
            vgaRGB <= vid_io_out_0_data;
            
    assign vgaRed   = vid_io_out_0_active_video ? (vgaRGB[23:20] >> 20) : 4'b0; 
    assign vgaBlue  = vid_io_out_0_active_video ? (vgaRGB[15:12] >> 12) : 4'b0; 
    assign vgaGreen = vid_io_out_0_active_video ? (vgaRGB[7:4] >> 4)    : 4'b0; 

endmodule
