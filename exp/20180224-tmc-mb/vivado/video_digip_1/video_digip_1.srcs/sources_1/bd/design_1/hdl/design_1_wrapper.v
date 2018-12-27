//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sat Feb 24 17:15:20 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clken,
    gen_clken,
    reset,
    sys_clock,
    vga_pBlue,
    vga_pGreen,
    vga_pHSync,
    vga_pRed,
    vga_pVSync);
  input clken;
  input gen_clken;
  input reset;
  input sys_clock;
  output [3:0]vga_pBlue;
  output [3:0]vga_pGreen;
  output vga_pHSync;
  output [3:0]vga_pRed;
  output vga_pVSync;

  wire clken;
  wire gen_clken;
  wire reset;
  wire sys_clock;
  wire [3:0]vga_pBlue;
  wire [3:0]vga_pGreen;
  wire vga_pHSync;
  wire [3:0]vga_pRed;
  wire vga_pVSync;

  design_1 design_1_i
       (.clken(clken),
        .gen_clken(gen_clken),
        .reset(reset),
        .sys_clock(sys_clock),
        .vga_pBlue(vga_pBlue),
        .vga_pGreen(vga_pGreen),
        .vga_pHSync(vga_pHSync),
        .vga_pRed(vga_pRed),
        .vga_pVSync(vga_pVSync));
endmodule
