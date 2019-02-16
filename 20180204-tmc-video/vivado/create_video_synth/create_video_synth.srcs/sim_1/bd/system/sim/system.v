//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb  4 14:06:19 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (vid_hsync_0,
    vid_vsync_0);
  output vid_hsync_0;
  output vid_vsync_0;

  wire sim_clk_gen_0_clk;
  wire sim_clk_gen_0_sync_rst;
  wire sim_clk_gen_1_clk;
  wire sim_clk_gen_1_sync_rst;
  wire v_axi4s_vid_out_0_vid_hsync;
  wire v_axi4s_vid_out_0_vid_vsync;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [39:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign vid_hsync_0 = v_axi4s_vid_out_0_vid_hsync;
  assign vid_vsync_0 = v_axi4s_vid_out_0_vid_vsync;
  system_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk),
        .sync_rst(sim_clk_gen_0_sync_rst));
  system_sim_clk_gen_0_1 sim_clk_gen_1
       (.clk(sim_clk_gen_1_clk),
        .sync_rst(sim_clk_gen_1_sync_rst));
  system_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(sim_clk_gen_0_clk),
        .aclken(xlconstant_0_dout),
        .aresetn(1'b1),
        .fid(1'b0),
        .s_axis_video_tdata(v_tpg_0_m_axis_video_TDATA),
        .s_axis_video_tlast(v_tpg_0_m_axis_video_TLAST),
        .s_axis_video_tready(v_tpg_0_m_axis_video_TREADY),
        .s_axis_video_tuser(v_tpg_0_m_axis_video_TUSER),
        .s_axis_video_tvalid(v_tpg_0_m_axis_video_TVALID),
        .vid_hsync(v_axi4s_vid_out_0_vid_hsync),
        .vid_io_out_ce(1'b1),
        .vid_vsync(v_axi4s_vid_out_0_vid_vsync),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(xlconstant_1_dout),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(xlconstant_1_dout),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  system_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(sim_clk_gen_1_clk),
        .clken(xlconstant_0_dout),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(sim_clk_gen_1_sync_rst),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  system_v_tpg_0_0 v_tpg_0
       (.ap_clk(sim_clk_gen_0_clk),
        .ap_rst_n(sim_clk_gen_0_sync_rst),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_ARVALID(1'b0),
        .s_axi_CTRL_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_AWVALID(1'b0),
        .s_axi_CTRL_BREADY(1'b0),
        .s_axi_CTRL_RREADY(1'b0),
        .s_axi_CTRL_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_CTRL_WVALID(1'b0));
  system_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  system_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
