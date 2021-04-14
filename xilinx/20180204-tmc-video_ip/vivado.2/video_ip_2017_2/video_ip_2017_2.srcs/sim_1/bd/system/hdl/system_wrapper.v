//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Feb  4 18:29:39 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (clk,
    sync_rst);
  output clk;
  output sync_rst;

  wire clk;
  wire sync_rst;

  system system_i
       (.clk(clk),
        .sync_rst(sync_rst));
endmodule
