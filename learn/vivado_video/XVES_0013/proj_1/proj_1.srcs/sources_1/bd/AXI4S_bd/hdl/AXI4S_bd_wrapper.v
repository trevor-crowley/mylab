//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jan 24 20:11:07 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target AXI4S_bd_wrapper.bd
//Design      : AXI4S_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI4S_bd_wrapper
   (AXIS_out_tdata,
    AXIS_out_tdest,
    AXIS_out_tid,
    AXIS_out_tlast,
    AXIS_out_tready,
    AXIS_out_tuser,
    AXIS_out_tvalid,
    aclk_40MHz,
    aresetn_0);
  output [23:0]AXIS_out_tdata;
  output [0:0]AXIS_out_tdest;
  output [0:0]AXIS_out_tid;
  output AXIS_out_tlast;
  input AXIS_out_tready;
  output [2:0]AXIS_out_tuser;
  output AXIS_out_tvalid;
  input aclk_40MHz;
  input aresetn_0;

  wire [23:0]AXIS_out_tdata;
  wire [0:0]AXIS_out_tdest;
  wire [0:0]AXIS_out_tid;
  wire AXIS_out_tlast;
  wire AXIS_out_tready;
  wire [2:0]AXIS_out_tuser;
  wire AXIS_out_tvalid;
  wire aclk_40MHz;
  wire aresetn_0;

  AXI4S_bd AXI4S_bd_i
       (.AXIS_out_tdata(AXIS_out_tdata),
        .AXIS_out_tdest(AXIS_out_tdest),
        .AXIS_out_tid(AXIS_out_tid),
        .AXIS_out_tlast(AXIS_out_tlast),
        .AXIS_out_tready(AXIS_out_tready),
        .AXIS_out_tuser(AXIS_out_tuser),
        .AXIS_out_tvalid(AXIS_out_tvalid),
        .aclk_40MHz(aclk_40MHz),
        .aresetn_0(aresetn_0));
endmodule
