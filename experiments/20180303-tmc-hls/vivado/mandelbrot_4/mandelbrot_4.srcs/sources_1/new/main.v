`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2018 04:56:40 PM
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
    input wire reset,
    input wire sys_clock,
    input wire [0:0] sw,
    output wire [3:0] vgaBlue, vgaGreen, vgaRed,
    output wire Hsync,
    output wire Vsync
    );
 
   wire vid_io_out_active_video;
   wire [23:0]vid_io_out_data;   
    
  design_1_wrapper design_1_wrapper_i

       (.clken(sw[0]),
        .reset(reset),
        .sys_clock(sys_clock),
        .vid_io_out_active_video(vid_io_out_active_video),
        .vid_io_out_data(vid_io_out_data),
        .vid_io_out_hsync(Hsync),
        .vid_io_out_vsync(Vsync)
        );
    
    assign vgaRed = vid_io_out_data[3:0];
    assign vgaGreen = vid_io_out_data[7:4];
    assign vgaBlue = vid_io_out_data[11:8];
endmodule
