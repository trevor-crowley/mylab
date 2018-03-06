//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Mar  5 00:03:15 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clken,
    reset,
    sys_clock,
    vid_io_out_active_video,
    vid_io_out_data,
    vid_io_out_field,
    vid_io_out_hblank,
    vid_io_out_hsync,
    vid_io_out_vblank,
    vid_io_out_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CLKEN CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CLKEN, POLARITY ACTIVE_LOW" *) input clken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) output vid_io_out_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [23:0]vid_io_out_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_io_out_field;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_io_out_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_io_out_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_io_out_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_io_out_vsync;

  wire clk_wiz_0_clk_ap;
  wire clk_wiz_0_clk_vid;
  wire clk_wiz_0_locked;
  wire clken_1;
  wire [23:0]mandelbrot_frame_0_video_out_TDATA;
  wire [0:0]mandelbrot_frame_0_video_out_TLAST;
  wire mandelbrot_frame_0_video_out_TREADY;
  wire [0:0]mandelbrot_frame_0_video_out_TUSER;
  wire mandelbrot_frame_0_video_out_TVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire sys_clock_1;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_FIELD;
  wire v_axi4s_vid_out_0_vid_io_out_HBLANK;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VBLANK;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;

  assign clken_1 = clken;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vid_io_out_active_video = v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  assign vid_io_out_data[23:0] = v_axi4s_vid_out_0_vid_io_out_DATA;
  assign vid_io_out_field = v_axi4s_vid_out_0_vid_io_out_FIELD;
  assign vid_io_out_hblank = v_axi4s_vid_out_0_vid_io_out_HBLANK;
  assign vid_io_out_hsync = v_axi4s_vid_out_0_vid_io_out_HSYNC;
  assign vid_io_out_vblank = v_axi4s_vid_out_0_vid_io_out_VBLANK;
  assign vid_io_out_vsync = v_axi4s_vid_out_0_vid_io_out_VSYNC;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_ap(clk_wiz_0_clk_ap),
        .clk_in1(sys_clock_1),
        .clk_vid(clk_wiz_0_clk_vid),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  design_1_mandelbrot_frame_0_0 mandelbrot_frame_0
       (.ap_clk(clk_wiz_0_clk_ap),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .ap_start(clken_1),
        .video_out_TDATA(mandelbrot_frame_0_video_out_TDATA),
        .video_out_TLAST(mandelbrot_frame_0_video_out_TLAST),
        .video_out_TREADY(mandelbrot_frame_0_video_out_TREADY),
        .video_out_TUSER(mandelbrot_frame_0_video_out_TUSER),
        .video_out_TVALID(mandelbrot_frame_0_video_out_TVALID));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_vid));
  design_1_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(clk_wiz_0_clk_ap),
        .aclken(clken_1),
        .aresetn(1'b1),
        .fid(1'b0),
        .s_axis_video_tdata(mandelbrot_frame_0_video_out_TDATA),
        .s_axis_video_tlast(mandelbrot_frame_0_video_out_TLAST),
        .s_axis_video_tready(mandelbrot_frame_0_video_out_TREADY),
        .s_axis_video_tuser(mandelbrot_frame_0_video_out_TUSER),
        .s_axis_video_tvalid(mandelbrot_frame_0_video_out_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_field_id(v_axi4s_vid_out_0_vid_io_out_FIELD),
        .vid_hblank(v_axi4s_vid_out_0_vid_io_out_HBLANK),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(clken_1),
        .vid_io_out_clk(clk_wiz_0_clk_vid),
        .vid_io_out_reset(1'b0),
        .vid_vblank(v_axi4s_vid_out_0_vid_io_out_VBLANK),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  design_1_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(clk_wiz_0_clk_vid),
        .clken(clken_1),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
endmodule
