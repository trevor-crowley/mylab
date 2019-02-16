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
    input wire [13:0] sw,
    output wire [3:0] vgaBlue, vgaGreen, vgaRed,
    output wire Hsync,
    output wire Vsync
    );
    
    
  design_1_wrapper design_1_wrapper_i
         (.reset(reset),
          .sys_clock(sys_clock),
            .clken(sw[0]),
            .gen_clken(sw[1]),
          .rgb_pData(sw[13:2]),
          .vga_pRed(vgaRed),
          .vga_pBlue(vgaBlue),
          .vga_pGreen(vgaGreen),
          .vga_pHSync(Hsync),
          .vga_pVSync(Vsync)
   );
    

endmodule
