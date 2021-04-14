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
    input wire [2:0] sw,
    output wire Hsync,
    output wire Vsync,
    output wire [3:0] vgaRed,
    output wire [3:0] vgaBlue,
    output wire [3:0] vgaGreen,
    
    input wire usb_uart_rxd,
    output wire usb_uart_txd
    
    );

  
  wire active_video_out;
  wire clken_n;
  wire gen_clken_p;
  
  wire [11:0] vgaRGB;
  reg vsync;
  wire vsync_next;
  
  wire [15:0]gpio_rgb_o;
  wire [23:0]vid_data;
  

  design_1_wrapper design_1_wrapper_i
      (
     .sys_clock(sys_clock),
     .reset(reset),

     .clken(clken_n),


     .active_video_out(active_video_out),
     .hsync_out(Hsync),
     .vsync_out(Vsync),
     
      .gpio_rgb_tri_o(gpio_rgb_o),
      .usb_uart_rxd(usb_uart_rxd),
      .usb_uart_txd(usb_uart_txd),
       .vid_data(vid_data)
     
     );
/*     
     always @(posedge sys_clock, posedge reset)
        if (reset)
            vsync <= 1'b0;
            
        else
            vsync <= vsync_next;
            
    // change colour on start of vertical synch pulse
    assign vsync_next = Vsync;
    assign vgaRGB = (~vsync && vsync_next) ? gpio_rgb_o[11:0] : 12'b0;
*/

    // multiplex test vs GPI using switch 3
    assign vgaRGB = sw[2] ? {{vid_data[23:20]}, {vid_data[15:12]},{vid_data[7:4]}} : gpio_rgb_o[11:0];
    
    assign vgaRed   = active_video_out ? vgaRGB[11:8]   : 4'b0;
    assign vgaBlue  = active_video_out ? vgaRGB[7:4]    : 4'b0;
    assign vgaGreen = active_video_out ? vgaRGB[3:0]    : 4'b0;

/*
    assign vgaRed   = active_video_out ? 4'b1111  : 4'b0;
    assign vgaBlue  = active_video_out ? 4'b1111  : 4'b0;
    assign vgaGreen = active_video_out ? 4'b0111  : 4'b0;
*/
    
    assign clken_n = sw[0];
    assign gen_clken_p = sw[1];
    
endmodule
