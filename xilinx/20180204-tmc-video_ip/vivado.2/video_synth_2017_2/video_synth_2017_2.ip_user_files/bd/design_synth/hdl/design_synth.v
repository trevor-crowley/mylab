//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Feb  4 21:01:10 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_synth.bd
//Design      : design_synth
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_synth,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_synth,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_synth.hwdef" *) 
module design_synth
   (fsync_out,
    interrupt,
    m_axis_video_tdata,
    m_axis_video_tdest,
    m_axis_video_tid,
    m_axis_video_tkeep,
    m_axis_video_tlast,
    m_axis_video_tready,
    m_axis_video_tstrb,
    m_axis_video_tuser,
    m_axis_video_tvalid,
    vtiming_out_active_video,
    vtiming_out_hblank,
    vtiming_out_hsync,
    vtiming_out_vblank,
    vtiming_out_vsync);
  output [0:0]fsync_out;
  output interrupt;
  output [23:0]m_axis_video_tdata;
  output [0:0]m_axis_video_tdest;
  output [0:0]m_axis_video_tid;
  output [2:0]m_axis_video_tkeep;
  output [0:0]m_axis_video_tlast;
  input m_axis_video_tready;
  output [2:0]m_axis_video_tstrb;
  output [0:0]m_axis_video_tuser;
  output m_axis_video_tvalid;
  output vtiming_out_active_video;
  output vtiming_out_hblank;
  output vtiming_out_hsync;
  output vtiming_out_vblank;
  output vtiming_out_vsync;

  wire sim_clk_gen_ap_clk;
  wire sim_clk_gen_ap_sync_rst;
  wire sim_clk_gen_pix_clk;
  wire sim_clk_gen_pix_sync_rst;
  wire [0:0]v_tc_0_fsync_out;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire v_tpg_0_interrupt;
  wire [23:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TDEST;
  wire [0:0]v_tpg_0_m_axis_video_TID;
  wire [2:0]v_tpg_0_m_axis_video_TKEEP;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [2:0]v_tpg_0_m_axis_video_TSTRB;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;
  wire [0:0]xlconstant_1_dout;

  assign fsync_out[0] = v_tc_0_fsync_out;
  assign interrupt = v_tpg_0_interrupt;
  assign m_axis_video_tdata[23:0] = v_tpg_0_m_axis_video_TDATA;
  assign m_axis_video_tdest[0] = v_tpg_0_m_axis_video_TDEST;
  assign m_axis_video_tid[0] = v_tpg_0_m_axis_video_TID;
  assign m_axis_video_tkeep[2:0] = v_tpg_0_m_axis_video_TKEEP;
  assign m_axis_video_tlast[0] = v_tpg_0_m_axis_video_TLAST;
  assign m_axis_video_tstrb[2:0] = v_tpg_0_m_axis_video_TSTRB;
  assign m_axis_video_tuser[0] = v_tpg_0_m_axis_video_TUSER;
  assign m_axis_video_tvalid = v_tpg_0_m_axis_video_TVALID;
  assign v_tpg_0_m_axis_video_TREADY = m_axis_video_tready;
  assign vtiming_out_active_video = v_tc_0_vtiming_out_ACTIVE_VIDEO;
  assign vtiming_out_hblank = v_tc_0_vtiming_out_HBLANK;
  assign vtiming_out_hsync = v_tc_0_vtiming_out_HSYNC;
  assign vtiming_out_vblank = v_tc_0_vtiming_out_VBLANK;
  assign vtiming_out_vsync = v_tc_0_vtiming_out_VSYNC;
  design_synth_sim_clk_gen_0_0 sim_clk_gen_ap
       (.clk(sim_clk_gen_ap_clk),
        .sync_rst(sim_clk_gen_ap_sync_rst));
  design_synth_sim_clk_gen_0_1 sim_clk_gen_pix
       (.clk(sim_clk_gen_pix_clk),
        .sync_rst(sim_clk_gen_pix_sync_rst));
  design_synth_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(sim_clk_gen_pix_clk),
        .clken(xlconstant_1_dout),
        .fsync_out(v_tc_0_fsync_out),
        .gen_clken(xlconstant_1_dout),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(sim_clk_gen_pix_sync_rst),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  design_synth_v_tpg_0_0 v_tpg_0
       (.ap_clk(sim_clk_gen_ap_clk),
        .ap_rst_n(sim_clk_gen_ap_sync_rst),
        .interrupt(v_tpg_0_interrupt),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_tpg_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_tpg_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_ARVALID(xlconstant_1_dout),
        .s_axi_CTRL_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_AWVALID(xlconstant_1_dout),
        .s_axi_CTRL_BREADY(xlconstant_1_dout),
        .s_axi_CTRL_RREADY(xlconstant_1_dout),
        .s_axi_CTRL_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_WSTRB(xlconstant_1_dout),
        .s_axi_CTRL_WVALID(xlconstant_1_dout));
  design_synth_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
