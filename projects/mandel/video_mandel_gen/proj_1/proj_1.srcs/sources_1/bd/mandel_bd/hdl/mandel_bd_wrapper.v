//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Feb 16 14:28:32 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target mandel_bd_wrapper.bd
//Design      : mandel_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mandel_bd_wrapper
   (AXIS_out_tdata,
    AXIS_out_tdest,
    AXIS_out_tid,
    AXIS_out_tkeep,
    AXIS_out_tlast,
    AXIS_out_tready,
    AXIS_out_tstrb,
    AXIS_out_tuser,
    AXIS_out_tvalid,
    aclk_40MHz,
    ap_start,
    aresetn_0);
  output [23:0]AXIS_out_tdata;
  output [0:0]AXIS_out_tdest;
  output [0:0]AXIS_out_tid;
  output [2:0]AXIS_out_tkeep;
  output [0:0]AXIS_out_tlast;
  input AXIS_out_tready;
  output [2:0]AXIS_out_tstrb;
  output [0:0]AXIS_out_tuser;
  output AXIS_out_tvalid;
  input aclk_40MHz;
  input ap_start;
  input aresetn_0;

  wire [23:0]AXIS_out_tdata;
  wire [0:0]AXIS_out_tdest;
  wire [0:0]AXIS_out_tid;
  wire [2:0]AXIS_out_tkeep;
  wire [0:0]AXIS_out_tlast;
  wire AXIS_out_tready;
  wire [2:0]AXIS_out_tstrb;
  wire [0:0]AXIS_out_tuser;
  wire AXIS_out_tvalid;
  wire aclk_40MHz;
  wire ap_start;
  wire aresetn_0;

  mandel_bd mandel_bd_i
       (.AXIS_out_tdata(AXIS_out_tdata),
        .AXIS_out_tdest(AXIS_out_tdest),
        .AXIS_out_tid(AXIS_out_tid),
        .AXIS_out_tkeep(AXIS_out_tkeep),
        .AXIS_out_tlast(AXIS_out_tlast),
        .AXIS_out_tready(AXIS_out_tready),
        .AXIS_out_tstrb(AXIS_out_tstrb),
        .AXIS_out_tuser(AXIS_out_tuser),
        .AXIS_out_tvalid(AXIS_out_tvalid),
        .aclk_40MHz(aclk_40MHz),
        .ap_start(ap_start),
        .aresetn_0(aresetn_0));
endmodule
