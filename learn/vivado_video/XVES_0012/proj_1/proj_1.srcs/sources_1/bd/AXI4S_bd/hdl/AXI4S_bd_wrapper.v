//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jan 24 14:44:02 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target AXI4S_bd_wrapper.bd
//Design      : AXI4S_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI4S_bd_wrapper
   (aclk_20MHz,
    aclk_40MHz,
    aresetn_0,
    aresetn_1,
    vid_active_video,
    vid_data,
    vid_hblank,
    vid_hsync,
    vid_vblank,
    vid_vsync);
  input aclk_20MHz;
  input aclk_40MHz;
  input aresetn_0;
  input aresetn_1;
  output vid_active_video;
  output [15:0]vid_data;
  output vid_hblank;
  output vid_hsync;
  output vid_vblank;
  output vid_vsync;

  wire aclk_20MHz;
  wire aclk_40MHz;
  wire aresetn_0;
  wire aresetn_1;
  wire vid_active_video;
  wire [15:0]vid_data;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_vblank;
  wire vid_vsync;

  AXI4S_bd AXI4S_bd_i
       (.aclk_20MHz(aclk_20MHz),
        .aclk_40MHz(aclk_40MHz),
        .aresetn_0(aresetn_0),
        .aresetn_1(aresetn_1),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync));
endmodule
