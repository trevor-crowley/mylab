// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Feb 16 14:29:03 2020
// Host        : luigilinux running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mandel_bd_video_mandelbrot_gen_0_0_stub.v
// Design      : mandel_bd_video_mandelbrot_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "video_mandelbrot_generator,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_cmd_AWADDR, s_axi_cmd_AWVALID, 
  s_axi_cmd_AWREADY, s_axi_cmd_WDATA, s_axi_cmd_WSTRB, s_axi_cmd_WVALID, s_axi_cmd_WREADY, 
  s_axi_cmd_BRESP, s_axi_cmd_BVALID, s_axi_cmd_BREADY, s_axi_cmd_ARADDR, s_axi_cmd_ARVALID, 
  s_axi_cmd_ARREADY, s_axi_cmd_RDATA, s_axi_cmd_RRESP, s_axi_cmd_RVALID, s_axi_cmd_RREADY, 
  ap_clk, ap_rst_n, interrupt, m_axis_video_TVALID, m_axis_video_TREADY, m_axis_video_TDATA, 
  m_axis_video_TKEEP, m_axis_video_TSTRB, m_axis_video_TUSER, m_axis_video_TLAST, 
  m_axis_video_TID, m_axis_video_TDEST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_cmd_AWADDR[5:0],s_axi_cmd_AWVALID,s_axi_cmd_AWREADY,s_axi_cmd_WDATA[31:0],s_axi_cmd_WSTRB[3:0],s_axi_cmd_WVALID,s_axi_cmd_WREADY,s_axi_cmd_BRESP[1:0],s_axi_cmd_BVALID,s_axi_cmd_BREADY,s_axi_cmd_ARADDR[5:0],s_axi_cmd_ARVALID,s_axi_cmd_ARREADY,s_axi_cmd_RDATA[31:0],s_axi_cmd_RRESP[1:0],s_axi_cmd_RVALID,s_axi_cmd_RREADY,ap_clk,ap_rst_n,interrupt,m_axis_video_TVALID,m_axis_video_TREADY,m_axis_video_TDATA[23:0],m_axis_video_TKEEP[2:0],m_axis_video_TSTRB[2:0],m_axis_video_TUSER[0:0],m_axis_video_TLAST[0:0],m_axis_video_TID[0:0],m_axis_video_TDEST[0:0]" */;
  input [5:0]s_axi_cmd_AWADDR;
  input s_axi_cmd_AWVALID;
  output s_axi_cmd_AWREADY;
  input [31:0]s_axi_cmd_WDATA;
  input [3:0]s_axi_cmd_WSTRB;
  input s_axi_cmd_WVALID;
  output s_axi_cmd_WREADY;
  output [1:0]s_axi_cmd_BRESP;
  output s_axi_cmd_BVALID;
  input s_axi_cmd_BREADY;
  input [5:0]s_axi_cmd_ARADDR;
  input s_axi_cmd_ARVALID;
  output s_axi_cmd_ARREADY;
  output [31:0]s_axi_cmd_RDATA;
  output [1:0]s_axi_cmd_RRESP;
  output s_axi_cmd_RVALID;
  input s_axi_cmd_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;
endmodule
