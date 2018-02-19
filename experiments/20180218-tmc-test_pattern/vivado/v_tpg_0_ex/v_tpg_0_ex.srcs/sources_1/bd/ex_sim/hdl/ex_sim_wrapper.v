//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb 18 10:33:42 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target ex_sim_wrapper.bd
//Design      : ex_sim_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ex_sim_wrapper
   (aclk,
    locked,
    reset,
    vid_io_out_active_video,
    vid_io_out_data,
    vid_io_out_field,
    vid_io_out_hblank,
    vid_io_out_hsync,
    vid_io_out_vblank,
    vid_io_out_vsync);
  input aclk;
  output locked;
  input reset;
  output vid_io_out_active_video;
  output [23:0]vid_io_out_data;
  output vid_io_out_field;
  output vid_io_out_hblank;
  output vid_io_out_hsync;
  output vid_io_out_vblank;
  output vid_io_out_vsync;

  wire aclk;
  wire locked;
  wire reset;
  wire vid_io_out_active_video;
  wire [23:0]vid_io_out_data;
  wire vid_io_out_field;
  wire vid_io_out_hblank;
  wire vid_io_out_hsync;
  wire vid_io_out_vblank;
  wire vid_io_out_vsync;

  ex_sim ex_sim_i
       (.aclk(aclk),
        .locked(locked),
        .reset(reset),
        .vid_io_out_active_video(vid_io_out_active_video),
        .vid_io_out_data(vid_io_out_data),
        .vid_io_out_field(vid_io_out_field),
        .vid_io_out_hblank(vid_io_out_hblank),
        .vid_io_out_hsync(vid_io_out_hsync),
        .vid_io_out_vblank(vid_io_out_vblank),
        .vid_io_out_vsync(vid_io_out_vsync));
endmodule
