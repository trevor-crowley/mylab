`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2018 03:30:08 PM
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
   (input wire reset,
    input wire sys_clock,
    input wire [1:0] sw,
    output wire Hsync,
    output wire Vsync,
    output wire [3:0] vgaRed,
    output wire [3:0] vgaBlue,
    output wire [3:0] vgaGreen
    );

  
  wire active_video_out;
  wire clken_n;
  wire gen_clken_p;
  
  reg [11:0] vgaRGB;
  

  design_1_wrapper design_1_wrapper_i
      (
     .sys_clock(sys_clock),
     .reset(reset),

     .clken(clken_n),
     .gen_clken(gen_clken_p),

     .active_video_out(active_video_out),
     .hsync_out(Hsync),
     .vsync_out(Vsync)
     );
     
//     always @(posedge sys_clock, posedge reset)
//        if (reset)
//            vgaRGB <= 12'b0;
//        else
//            vgaRGB <= sw[13:2];
    
/*    
    assign vgaRed = sw[13:10]; // 4'b0;
    assign vgaGreen = sw[9:6]; // 4'b0;
    assign vgaBlue = sw[5:2]; // 4'b0;
*/
    assign vgaRed   = active_video_out ? 4'b1111  : 4'b0;
    assign vgaGreen = active_video_out ? 4'b0111  : 4'b0;
    assign vgaBlue  = active_video_out ? 4'b1111  : 4'b0;
    
    assign clken_n = sw[0];
    assign gen_clken_p = sw[1];
    
endmodule
