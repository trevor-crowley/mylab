`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 03:50:56 PM
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
 input wire [0:0] sw,
 output wire [0:0] led,
 output wire [3:0] vgaRed, 
 output wire [3:0] vgaGreen, 
 output wire [3:0] vgaBlue,
 output wire Hsync,
 output wire Vsync
    );

  wire [23:0]vid_io_out_data;

    
  design_1_wrapper design_1_wrapper_i
         (.locked(led[0]),
          .reset(reset),
          .sys_clock(sys_clock),
          .vid_io_out_ce(sw[0]),
          .vid_io_out_data(vid_io_out_data),
          .vid_io_out_hsync(Hsync),
          .vid_io_out_vsync(Vsync));
/*       
    assign vgaBlue  = vid_io_out_data[23:20];
    assign vgaGreen = vid_io_out_data[15:12];
    assign vgaRed   = vid_io_out_data[7:4];
*/

//% RGB -> RBG (3 x 4 = 12 bits)
    
    assign vgaRed = vid_io_out_data[11:8];
    assign vgaBlue = vid_io_out_data[7:4];
    assign vgaGreen = vid_io_out_data[3:0];

 
    
                  
endmodule
