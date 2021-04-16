//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Jan 26 18:44:09 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target VTC_bd.bd
//Design      : VTC_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "VTC_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=VTC_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "VTC_bd.hwdef" *) 
module VTC_bd
   (active_video_out,
    clk_25_175MHz,
    hblank_out,
    hsync_out,
    vblank_out,
    vsync_out);
  output active_video_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_25_175MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_25_175MHZ, CLK_DOMAIN VTC_bd_clk_25_175MHz, FREQ_HZ 74250000, INSERT_VIP 0, PHASE 0.000" *) input clk_25_175MHz;
  output hblank_out;
  output hsync_out;
  output vblank_out;
  output vsync_out;

  wire clk_0_1;
  wire v_tc_0_active_video_out;
  wire v_tc_0_hblank_out;
  wire v_tc_0_hsync_out;
  wire v_tc_0_vblank_out;
  wire v_tc_0_vsync_out;
  wire [0:0]xlconstant_0_dout;

  assign active_video_out = v_tc_0_active_video_out;
  assign clk_0_1 = clk_25_175MHz;
  assign hblank_out = v_tc_0_hblank_out;
  assign hsync_out = v_tc_0_hsync_out;
  assign vblank_out = v_tc_0_vblank_out;
  assign vsync_out = v_tc_0_vsync_out;
  VTC_bd_const_VCC_0 const_VCC
       (.dout(xlconstant_0_dout));
  VTC_bd_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_active_video_out),
        .clk(clk_0_1),
        .clken(xlconstant_0_dout),
        .gen_clken(xlconstant_0_dout),
        .hblank_out(v_tc_0_hblank_out),
        .hsync_out(v_tc_0_hsync_out),
        .resetn(xlconstant_0_dout),
        .vblank_out(v_tc_0_vblank_out),
        .vsync_out(v_tc_0_vsync_out));
endmodule
