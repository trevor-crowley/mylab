//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Feb 19 02:07:03 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vid_io_out_0_active_video,
    vid_io_out_0_data,
    vid_io_out_0_field,
    vid_io_out_0_hblank,
    vid_io_out_0_hsync,
    vid_io_out_0_vblank,
    vid_io_out_0_vsync);
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output vid_io_out_0_active_video;
  output [23:0]vid_io_out_0_data;
  output vid_io_out_0_field;
  output vid_io_out_0_hblank;
  output vid_io_out_0_hsync;
  output vid_io_out_0_vblank;
  output vid_io_out_0_vsync;

  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire vid_io_out_0_active_video;
  wire [23:0]vid_io_out_0_data;
  wire vid_io_out_0_field;
  wire vid_io_out_0_hblank;
  wire vid_io_out_0_hsync;
  wire vid_io_out_0_vblank;
  wire vid_io_out_0_vsync;

  design_1 design_1_i
       (.reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vid_io_out_0_active_video(vid_io_out_0_active_video),
        .vid_io_out_0_data(vid_io_out_0_data),
        .vid_io_out_0_field(vid_io_out_0_field),
        .vid_io_out_0_hblank(vid_io_out_0_hblank),
        .vid_io_out_0_hsync(vid_io_out_0_hsync),
        .vid_io_out_0_vblank(vid_io_out_0_vblank),
        .vid_io_out_0_vsync(vid_io_out_0_vsync));
endmodule
