//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb  4 14:06:19 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (vid_hsync_0,
    vid_vsync_0);
  output vid_hsync_0;
  output vid_vsync_0;

  wire vid_hsync_0;
  wire vid_vsync_0;

  system system_i
       (.vid_hsync_0(vid_hsync_0),
        .vid_vsync_0(vid_vsync_0));
endmodule
