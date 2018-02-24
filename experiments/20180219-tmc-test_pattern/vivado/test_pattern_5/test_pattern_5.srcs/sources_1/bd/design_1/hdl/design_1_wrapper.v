//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Feb 23 18:59:16 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (active_video_out,
    clken,
    gpio_rgb_tri_o,
    hsync_out,
    overflow,
    reset,
    status,
    sys_clock,
    underflow,
    usb_uart_rxd,
    usb_uart_txd,
    vid_data,
    vsync_out);
  output active_video_out;
  input clken;
  output [15:0]gpio_rgb_tri_o;
  output hsync_out;
  output overflow;
  input reset;
  output [31:0]status;
  input sys_clock;
  output underflow;
  input usb_uart_rxd;
  output usb_uart_txd;
  output [23:0]vid_data;
  output vsync_out;

  wire active_video_out;
  wire clken;
  wire [15:0]gpio_rgb_tri_o;
  wire hsync_out;
  wire overflow;
  wire reset;
  wire [31:0]status;
  wire sys_clock;
  wire underflow;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire [23:0]vid_data;
  wire vsync_out;

  design_1 design_1_i
       (.active_video_out(active_video_out),
        .clken(clken),
        .gpio_rgb_tri_o(gpio_rgb_tri_o),
        .hsync_out(hsync_out),
        .overflow(overflow),
        .reset(reset),
        .status(status),
        .sys_clock(sys_clock),
        .underflow(underflow),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vid_data(vid_data),
        .vsync_out(vsync_out));
endmodule
