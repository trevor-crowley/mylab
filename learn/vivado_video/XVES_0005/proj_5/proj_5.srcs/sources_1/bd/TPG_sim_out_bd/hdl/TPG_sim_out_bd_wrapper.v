//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Jan 23 22:55:37 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target TPG_sim_out_bd_wrapper.bd
//Design      : TPG_sim_out_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TPG_sim_out_bd_wrapper
   (aclk_50MHz,
    aresetn_0,
    tpg_tdata,
    tpg_tlast,
    tpg_tready,
    tpg_tuser,
    tpg_tvalid);
  input aclk_50MHz;
  input aresetn_0;
  output [23:0]tpg_tdata;
  output [0:0]tpg_tlast;
  input tpg_tready;
  output [0:0]tpg_tuser;
  output tpg_tvalid;

  wire aclk_50MHz;
  wire aresetn_0;
  wire [23:0]tpg_tdata;
  wire [0:0]tpg_tlast;
  wire tpg_tready;
  wire [0:0]tpg_tuser;
  wire tpg_tvalid;

  TPG_sim_out_bd TPG_sim_out_bd_i
       (.aclk_50MHz(aclk_50MHz),
        .aresetn_0(aresetn_0),
        .tpg_tdata(tpg_tdata),
        .tpg_tlast(tpg_tlast),
        .tpg_tready(tpg_tready),
        .tpg_tuser(tpg_tuser),
        .tpg_tvalid(tpg_tvalid));
endmodule
