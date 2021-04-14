//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
//Date        : Sun Feb  4 18:46:21 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_0,
    sync_rst_0);
  output clk_0;
  output sync_rst_0;

  wire clk_0;
  wire sync_rst_0;

  design_1 design_1_i
       (.clk_0(clk_0),
        .sync_rst_0(sync_rst_0));
endmodule
