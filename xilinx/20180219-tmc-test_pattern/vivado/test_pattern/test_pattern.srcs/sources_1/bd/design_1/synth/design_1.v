//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Feb 19 17:59:45 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (active_video_out,
    clken,
    gen_clken,
    hsync_out,
    reset,
    sys_clock,
    vsync_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ACTIVE_VIDEO_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ACTIVE_VIDEO_OUT, LAYERED_METADATA undef" *) output active_video_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN, POLARITY ACTIVE_LOW" *) input clken;
  input gen_clken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HSYNC_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HSYNC_OUT, LAYERED_METADATA undef" *) output hsync_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VSYNC_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VSYNC_OUT, LAYERED_METADATA undef" *) output vsync_out;

  wire clk_wiz_0_clk_vid;
  wire clk_wiz_0_locked;
  wire clken_1;
  wire gen_clken_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire sys_clock_1;
  wire v_tc_0_active_video_out;
  wire v_tc_0_hsync_out;
  wire v_tc_0_vsync_out;

  assign active_video_out = v_tc_0_active_video_out;
  assign clken_1 = clken;
  assign gen_clken_1 = gen_clken;
  assign hsync_out = v_tc_0_hsync_out;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vsync_out = v_tc_0_vsync_out;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_vid(clk_wiz_0_clk_vid),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_vid));
  design_1_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_active_video_out),
        .clk(clk_wiz_0_clk_vid),
        .clken(clken_1),
        .gen_clken(gen_clken_1),
        .hsync_out(v_tc_0_hsync_out),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .vsync_out(v_tc_0_vsync_out));
endmodule
