//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb  4 22:43:43 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Hsync,
    Vsync,
    reset,
    sys_clock,
    sw,
    vgaRed,
    vgaBlue,
    vgaGreen
  
    
    );
  output Hsync;
  output Vsync;
  input reset;
  input sys_clock;
  input sw;
  output vgaRed;
  output vgaBlue;
  output vgaGreen;
  

  wire Hsync;
  wire Vsync;
  wire video_out;
  wire reset;
  wire sys_clock;
  wire [11:0] sw;
  wire [3:0] vgaRed;
  wire [3:0] vgaBlue;
  wire [3:0] vgaGreen;

  reg [11:0] rgb_reg;
  
  design_1 design_1_i
       (.Hsync(Hsync),
        .Vsync(Vsync),
        .active_video_out_0(video_out),
        .reset(reset),
        .sys_clock(sys_clock));
        
  always @(posedge sys_clock, posedge reset)
    if (reset) 
        rgb_reg = 0;
    else 
        rgb_reg = sw;
        
  assign vgaRed = video_out ? sw[3:0] : 4'b0;
  assign vgaGreen = video_out ? sw[7:4] : 4'b0;
  assign vgaBlue = video_out ? sw[11:8] : 4'b0;
        
endmodule
