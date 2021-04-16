//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jan 24 14:44:02 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target AXI4S_bd.bd
//Design      : AXI4S_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "AXI4S_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXI4S_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "AXI4S_bd.hwdef" *) 
module AXI4S_bd
   (aclk_20MHz,
    aclk_40MHz,
    aresetn_0,
    aresetn_1,
    vid_active_video,
    vid_data,
    vid_hblank,
    vid_hsync,
    vid_vblank,
    vid_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_20MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_20MHZ, ASSOCIATED_RESET aresetn_1:aresetn_1, CLK_DOMAIN AXI4S_bd_aclk_20MHz, FREQ_HZ 20000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_20MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_40MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_40MHZ, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN AXI4S_bd_aclk_40MHz, FREQ_HZ 40000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_40MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_1;
  output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VID_DATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VID_DATA, LAYERED_METADATA undef" *) output [15:0]vid_data;
  output vid_hblank;
  output vid_hsync;
  output vid_vblank;
  output vid_vsync;

  wire aclk_0_1;
  wire aclk_20MHz_1;
  wire aresetn_0_1;
  wire aresetn_1_1;
  wire [11:0]axi_vip_0_M_AXI_ARADDR;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [11:0]axi_vip_0_M_AXI_AWADDR;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [47:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire [0:0]axis_clock_converter_0_M_AXIS_TDEST;
  wire [0:0]axis_clock_converter_0_M_AXIS_TID;
  wire [5:0]axis_clock_converter_0_M_AXIS_TKEEP;
  wire axis_clock_converter_0_M_AXIS_TLAST;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire [5:0]axis_clock_converter_0_M_AXIS_TSTRB;
  wire [0:0]axis_clock_converter_0_M_AXIS_TUSER;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [15:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire [0:0]axis_dwidth_converter_0_M_AXIS_TDEST;
  wire [0:0]axis_dwidth_converter_0_M_AXIS_TID;
  wire [1:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  wire axis_dwidth_converter_0_M_AXIS_TLAST;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire [1:0]axis_dwidth_converter_0_M_AXIS_TSTRB;
  wire [1:0]axis_dwidth_converter_0_M_AXIS_TUSER;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire [31:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire [0:0]axis_subset_converter_0_M_AXIS_TDEST;
  wire [0:0]axis_subset_converter_0_M_AXIS_TID;
  wire [3:0]axis_subset_converter_0_M_AXIS_TKEEP;
  wire axis_subset_converter_0_M_AXIS_TLAST;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire [3:0]axis_subset_converter_0_M_AXIS_TSTRB;
  wire [3:0]axis_subset_converter_0_M_AXIS_TUSER;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire [15:0]axis_subset_converter_1_M_AXIS_TDATA;
  wire axis_subset_converter_1_M_AXIS_TLAST;
  wire axis_subset_converter_1_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_1_M_AXIS_TUSER;
  wire axis_subset_converter_1_M_AXIS_TVALID;
  wire v_axi4s_vid_out_0_vid_active_video;
  wire [15:0]v_axi4s_vid_out_0_vid_data;
  wire v_axi4s_vid_out_0_vid_hblank;
  wire v_axi4s_vid_out_0_vid_hsync;
  wire v_axi4s_vid_out_0_vid_vblank;
  wire v_axi4s_vid_out_0_vid_vsync;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [47:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TDEST;
  wire [0:0]v_tpg_0_m_axis_video_TID;
  wire [5:0]v_tpg_0_m_axis_video_TKEEP;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [5:0]v_tpg_0_m_axis_video_TSTRB;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;

  assign aclk_0_1 = aclk_40MHz;
  assign aclk_20MHz_1 = aclk_20MHz;
  assign aresetn_0_1 = aresetn_0;
  assign aresetn_1_1 = aresetn_1;
  assign vid_active_video = v_axi4s_vid_out_0_vid_active_video;
  assign vid_data[15:0] = v_axi4s_vid_out_0_vid_data;
  assign vid_hblank = v_axi4s_vid_out_0_vid_hblank;
  assign vid_hsync = v_axi4s_vid_out_0_vid_hsync;
  assign vid_vblank = v_axi4s_vid_out_0_vid_vblank;
  assign vid_vsync = v_axi4s_vid_out_0_vid_vsync;
  AXI4S_bd_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_20MHz_1),
        .aresetn(aresetn_1_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  AXI4S_bd_axis_clock_converter_0_0 axis_clock_converter_0
       (.m_axis_aclk(aclk_0_1),
        .m_axis_aresetn(aresetn_0_1),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_clock_converter_0_M_AXIS_TDEST),
        .m_axis_tid(axis_clock_converter_0_M_AXIS_TID),
        .m_axis_tkeep(axis_clock_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_clock_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tstrb(axis_clock_converter_0_M_AXIS_TSTRB),
        .m_axis_tuser(axis_clock_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(aclk_20MHz_1),
        .s_axis_aresetn(aresetn_1_1),
        .s_axis_tdata(v_tpg_0_m_axis_video_TDATA),
        .s_axis_tdest(v_tpg_0_m_axis_video_TDEST),
        .s_axis_tid(v_tpg_0_m_axis_video_TID),
        .s_axis_tkeep(v_tpg_0_m_axis_video_TKEEP),
        .s_axis_tlast(v_tpg_0_m_axis_video_TLAST),
        .s_axis_tready(v_tpg_0_m_axis_video_TREADY),
        .s_axis_tstrb(v_tpg_0_m_axis_video_TSTRB),
        .s_axis_tuser(v_tpg_0_m_axis_video_TUSER),
        .s_axis_tvalid(v_tpg_0_m_axis_video_TVALID));
  AXI4S_bd_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_dwidth_converter_0_M_AXIS_TDEST),
        .m_axis_tid(axis_dwidth_converter_0_M_AXIS_TID),
        .m_axis_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .m_axis_tstrb(axis_dwidth_converter_0_M_AXIS_TSTRB),
        .m_axis_tuser(axis_dwidth_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_tdest(axis_subset_converter_0_M_AXIS_TDEST),
        .s_axis_tid(axis_subset_converter_0_M_AXIS_TID),
        .s_axis_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .s_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_tstrb(axis_subset_converter_0_M_AXIS_TSTRB),
        .s_axis_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  AXI4S_bd_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_subset_converter_0_M_AXIS_TDEST),
        .m_axis_tid(axis_subset_converter_0_M_AXIS_TID),
        .m_axis_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tstrb(axis_subset_converter_0_M_AXIS_TSTRB),
        .m_axis_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .s_axis_tdest(axis_clock_converter_0_M_AXIS_TDEST),
        .s_axis_tid(axis_clock_converter_0_M_AXIS_TID),
        .s_axis_tkeep(axis_clock_converter_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_clock_converter_0_M_AXIS_TLAST),
        .s_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .s_axis_tstrb(axis_clock_converter_0_M_AXIS_TSTRB),
        .s_axis_tuser(axis_clock_converter_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID));
  AXI4S_bd_axis_subset_converter_1_0 axis_subset_converter_1
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_1_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .s_axis_tdest(axis_dwidth_converter_0_M_AXIS_TDEST),
        .s_axis_tid(axis_dwidth_converter_0_M_AXIS_TID),
        .s_axis_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .s_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .s_axis_tstrb(axis_dwidth_converter_0_M_AXIS_TSTRB),
        .s_axis_tuser(axis_dwidth_converter_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID));
  AXI4S_bd_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(aclk_0_1),
        .aclken(1'b1),
        .aresetn(aresetn_0_1),
        .fid(1'b0),
        .s_axis_video_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .s_axis_video_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .s_axis_video_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .s_axis_video_tuser(axis_subset_converter_1_M_AXIS_TUSER),
        .s_axis_video_tvalid(axis_subset_converter_1_M_AXIS_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_active_video),
        .vid_data(v_axi4s_vid_out_0_vid_data),
        .vid_hblank(v_axi4s_vid_out_0_vid_hblank),
        .vid_hsync(v_axi4s_vid_out_0_vid_hsync),
        .vid_io_out_ce(1'b1),
        .vid_vblank(v_axi4s_vid_out_0_vid_vblank),
        .vid_vsync(v_axi4s_vid_out_0_vid_vsync),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  AXI4S_bd_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(aclk_0_1),
        .clken(1'b1),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(aresetn_0_1),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  AXI4S_bd_v_tpg_0_0 v_tpg_0
       (.ap_clk(aclk_20MHz_1),
        .ap_rst_n(aresetn_1_1),
        .fid_in(1'b1),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_tpg_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_tpg_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(axi_vip_0_M_AXI_ARADDR[7:0]),
        .s_axi_CTRL_ARREADY(axi_vip_0_M_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(axi_vip_0_M_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(axi_vip_0_M_AXI_AWADDR[7:0]),
        .s_axi_CTRL_AWREADY(axi_vip_0_M_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(axi_vip_0_M_AXI_AWVALID),
        .s_axi_CTRL_BREADY(axi_vip_0_M_AXI_BREADY),
        .s_axi_CTRL_BRESP(axi_vip_0_M_AXI_BRESP),
        .s_axi_CTRL_BVALID(axi_vip_0_M_AXI_BVALID),
        .s_axi_CTRL_RDATA(axi_vip_0_M_AXI_RDATA),
        .s_axi_CTRL_RREADY(axi_vip_0_M_AXI_RREADY),
        .s_axi_CTRL_RRESP(axi_vip_0_M_AXI_RRESP),
        .s_axi_CTRL_RVALID(axi_vip_0_M_AXI_RVALID),
        .s_axi_CTRL_WDATA(axi_vip_0_M_AXI_WDATA),
        .s_axi_CTRL_WREADY(axi_vip_0_M_AXI_WREADY),
        .s_axi_CTRL_WSTRB(axi_vip_0_M_AXI_WSTRB),
        .s_axi_CTRL_WVALID(axi_vip_0_M_AXI_WVALID));
endmodule
