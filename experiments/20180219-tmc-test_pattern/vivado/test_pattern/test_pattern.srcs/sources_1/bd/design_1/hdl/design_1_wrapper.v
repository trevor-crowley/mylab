//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Feb 19 17:59:45 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (active_video_out,
    clken,
    gen_clken,
    hsync_out,
    reset,
    sys_clock,
    vsync_out);
  output active_video_out;
  input clken;
  input gen_clken;
  output hsync_out;
  input reset;
  input sys_clock;
  output vsync_out;

  wire active_video_out;
  wire clken;
  wire gen_clken;
  wire hsync_out;
  wire reset;
  wire sys_clock;
  wire vsync_out;

  design_1 design_1_i
       (.active_video_out(active_video_out),
        .clken(clken),
        .gen_clken(gen_clken),
        .hsync_out(hsync_out),
        .reset(reset),
        .sys_clock(sys_clock),
        .vsync_out(vsync_out));
endmodule
