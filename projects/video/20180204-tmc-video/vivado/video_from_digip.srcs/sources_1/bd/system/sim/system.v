//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb  4 12:28:18 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (Hsync,
    Vsync,
    reset,
    sys_clock,
    vgaBlue,
    vgaGreen,
    vgaRed);
  output Hsync;
  output Vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN system_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VGABLUE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VGABLUE, LAYERED_METADATA undef" *) output [3:0]vgaBlue;
  output [3:0]vgaGreen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VGARED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VGARED, LAYERED_METADATA undef" *) output [3:0]vgaRed;

  wire clk_wiz_0_clk_out1;
  wire reset_1;
  wire [3:0]rgb2vga_0_vga_pBlue;
  wire [3:0]rgb2vga_0_vga_pGreen;
  wire rgb2vga_0_vga_pHSync;
  wire [3:0]rgb2vga_0_vga_pRed;
  wire rgb2vga_0_vga_pVSync;
  wire sys_clock_1;
  wire [11:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign Hsync = rgb2vga_0_vga_pHSync;
  assign Vsync = rgb2vga_0_vga_pVSync;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vgaBlue[3:0] = rgb2vga_0_vga_pBlue;
  assign vgaGreen[3:0] = rgb2vga_0_vga_pGreen;
  assign vgaRed[3:0] = rgb2vga_0_vga_pRed;
  system_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
  system_rgb2vga_0_0 rgb2vga_0
       (.PixelClk(clk_wiz_0_clk_out1),
        .rgb_pData(xlconstant_0_dout),
        .rgb_pHSync(xlconstant_1_dout),
        .rgb_pVDE(xlconstant_1_dout),
        .rgb_pVSync(xlconstant_1_dout),
        .vga_pBlue(rgb2vga_0_vga_pBlue),
        .vga_pGreen(rgb2vga_0_vga_pGreen),
        .vga_pHSync(rgb2vga_0_vga_pHSync),
        .vga_pRed(rgb2vga_0_vga_pRed),
        .vga_pVSync(rgb2vga_0_vga_pVSync));
  system_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  system_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
