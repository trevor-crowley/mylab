// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat Feb 17 11:45:51 2018
// Host        : luigilinux running 64-bit openSUSE Leap 42.3
// Command     : write_verilog -force -mode synth_stub
//               /home/trevor/mylab/experiments/20180217-tmc-test_pattern/vivado/test_pattern/test_pattern.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_stub.v
// Design      : design_1_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_1_0(clk_ap, clk_video, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_ap,clk_video,reset,locked,clk_in1" */;
  output clk_ap;
  output clk_video;
  input reset;
  output locked;
  input clk_in1;
endmodule
