//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Jan 26 18:44:09 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target VTC_bd_wrapper.bd
//Design      : VTC_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module VTC_bd_wrapper
   (active_video_out,
    clk_25_175MHz,
    hblank_out,
    hsync_out,
    vblank_out,
    vsync_out);
  output active_video_out;
  input clk_25_175MHz;
  output hblank_out;
  output hsync_out;
  output vblank_out;
  output vsync_out;

  wire active_video_out;
  wire clk_25_175MHz;
  wire hblank_out;
  wire hsync_out;
  wire vblank_out;
  wire vsync_out;

  VTC_bd VTC_bd_i
       (.active_video_out(active_video_out),
        .clk_25_175MHz(clk_25_175MHz),
        .hblank_out(hblank_out),
        .hsync_out(hsync_out),
        .vblank_out(vblank_out),
        .vsync_out(vsync_out));
endmodule
