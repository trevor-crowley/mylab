//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb 25 09:01:01 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clken,
    gen_clken,
    reset,
    sys_clock,
    vga_pBlue,
    vga_pGreen,
    vga_pHSync,
    vga_pRed,
    vga_pVSync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN, POLARITY ACTIVE_LOW" *) input clken;
  input gen_clken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  output [3:0]vga_pBlue;
  output [3:0]vga_pGreen;
  output vga_pHSync;
  output [3:0]vga_pRed;
  output vga_pVSync;

  wire clk_wiz_0_clk_vid;
  wire clk_wiz_0_locked;
  wire clken_1;
  wire gen_clken_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire [3:0]rgb2vga_0_vga_pBlue;
  wire [3:0]rgb2vga_0_vga_pGreen;
  wire rgb2vga_0_vga_pHSync;
  wire [3:0]rgb2vga_0_vga_pRed;
  wire rgb2vga_0_vga_pVSync;
  wire sys_clock_1;
  wire v_tc_0_active_video_out;
  wire v_tc_0_hsync_out;
  wire v_tc_0_vsync_out;
  wire [11:0]xlconstant_0_dout;

  assign clken_1 = clken;
  assign gen_clken_1 = gen_clken;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vga_pBlue[3:0] = rgb2vga_0_vga_pBlue;
  assign vga_pGreen[3:0] = rgb2vga_0_vga_pGreen;
  assign vga_pHSync = rgb2vga_0_vga_pHSync;
  assign vga_pRed[3:0] = rgb2vga_0_vga_pRed;
  assign vga_pVSync = rgb2vga_0_vga_pVSync;
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
  design_1_rgb2vga_0_0 rgb2vga_0
       (.PixelClk(clk_wiz_0_clk_vid),
        .rgb_pData(xlconstant_0_dout),
        .rgb_pHSync(v_tc_0_hsync_out),
        .rgb_pVDE(v_tc_0_active_video_out),
        .rgb_pVSync(v_tc_0_vsync_out),
        .vga_pBlue(rgb2vga_0_vga_pBlue),
        .vga_pGreen(rgb2vga_0_vga_pGreen),
        .vga_pHSync(rgb2vga_0_vga_pHSync),
        .vga_pRed(rgb2vga_0_vga_pRed),
        .vga_pVSync(rgb2vga_0_vga_pVSync));
  design_1_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_active_video_out),
        .clk(clk_wiz_0_clk_vid),
        .clken(clken_1),
        .gen_clken(gen_clken_1),
        .hsync_out(v_tc_0_hsync_out),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .vsync_out(v_tc_0_vsync_out));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
