//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Feb  4 21:01:10 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target design_synth_wrapper.bd
//Design      : design_synth_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_synth_wrapper
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

  wire [0:0]fsync_out;
  wire interrupt;
  wire [23:0]m_axis_video_tdata;
  wire [0:0]m_axis_video_tdest;
  wire [0:0]m_axis_video_tid;
  wire [2:0]m_axis_video_tkeep;
  wire [0:0]m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [2:0]m_axis_video_tstrb;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire vtiming_out_active_video;
  wire vtiming_out_hblank;
  wire vtiming_out_hsync;
  wire vtiming_out_vblank;
  wire vtiming_out_vsync;

  design_synth design_synth_i
       (.fsync_out(fsync_out),
        .interrupt(interrupt),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tdest(m_axis_video_tdest),
        .m_axis_video_tid(m_axis_video_tid),
        .m_axis_video_tkeep(m_axis_video_tkeep),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tstrb(m_axis_video_tstrb),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .vtiming_out_active_video(vtiming_out_active_video),
        .vtiming_out_hblank(vtiming_out_hblank),
        .vtiming_out_hsync(vtiming_out_hsync),
        .vtiming_out_vblank(vtiming_out_vblank),
        .vtiming_out_vsync(vtiming_out_vsync));
endmodule
