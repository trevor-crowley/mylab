//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb  4 23:36:43 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Hsync,
    Vsync,
    active_video_out_0,
    reset,
    sys_clock);
  output Hsync;
  output Vsync;
  output active_video_out_0;
  input reset;
  input sys_clock;

  wire Hsync;
  wire Vsync;
  wire active_video_out_0;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.Hsync(Hsync),
        .Vsync(Vsync),
        .active_video_out_0(active_video_out_0),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
