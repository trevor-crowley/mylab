//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Mar 11 23:25:37 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (locked,
    reset,
    sys_clock,
    vid_io_out_active_video,
    vid_io_out_ce,
    vid_io_out_data,
    vid_io_out_field,
    vid_io_out_hblank,
    vid_io_out_hsync,
    vid_io_out_vblank,
    vid_io_out_vsync);
  output locked;
  input reset;
  input sys_clock;
  output vid_io_out_active_video;
  input vid_io_out_ce;
  output [23:0]vid_io_out_data;
  output vid_io_out_field;
  output vid_io_out_hblank;
  output vid_io_out_hsync;
  output vid_io_out_vblank;
  output vid_io_out_vsync;

  wire locked;
  wire reset;
  wire sys_clock;
  wire vid_io_out_active_video;
  wire vid_io_out_ce;
  wire [23:0]vid_io_out_data;
  wire vid_io_out_field;
  wire vid_io_out_hblank;
  wire vid_io_out_hsync;
  wire vid_io_out_vblank;
  wire vid_io_out_vsync;

  design_1 design_1_i
       (.locked(locked),
        .reset(reset),
        .sys_clock(sys_clock),
        .vid_io_out_active_video(vid_io_out_active_video),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_data(vid_io_out_data),
        .vid_io_out_field(vid_io_out_field),
        .vid_io_out_hblank(vid_io_out_hblank),
        .vid_io_out_hsync(vid_io_out_hsync),
        .vid_io_out_vblank(vid_io_out_vblank),
        .vid_io_out_vsync(vid_io_out_vsync));
endmodule
