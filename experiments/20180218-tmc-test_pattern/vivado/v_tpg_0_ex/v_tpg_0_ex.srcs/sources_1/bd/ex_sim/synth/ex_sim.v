//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Feb 18 10:33:41 2018
//Host        : luigilinux running 64-bit openSUSE Leap 42.3
//Command     : generate_target ex_sim.bd
//Design      : ex_sim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ex_sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex_sim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ex_sim.hwdef" *) 
module ex_sim
   (aclk,
    locked,
    reset,
    vid_io_out_active_video,
    vid_io_out_data,
    vid_io_out_field,
    vid_io_out_hblank,
    vid_io_out_hsync,
    vid_io_out_vblank,
    vid_io_out_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, CLK_DOMAIN design_sim_clk_wiz_0_0_clk_out1, FREQ_HZ 300000000, PHASE 0.0" *) input aclk;
  output locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) output vid_io_out_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [23:0]vid_io_out_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_io_out_field;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_io_out_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_io_out_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_io_out_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_io_out_vsync;

  wire aclk_1;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [0:0]axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire [0:0]axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire [0:0]axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]processing_0_axi_periph_M00_AXI_ARADDR;
  wire processing_0_axi_periph_M00_AXI_ARREADY;
  wire processing_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]processing_0_axi_periph_M00_AXI_AWADDR;
  wire processing_0_axi_periph_M00_AXI_AWREADY;
  wire processing_0_axi_periph_M00_AXI_AWVALID;
  wire processing_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]processing_0_axi_periph_M00_AXI_BRESP;
  wire processing_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]processing_0_axi_periph_M00_AXI_RDATA;
  wire processing_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]processing_0_axi_periph_M00_AXI_RRESP;
  wire processing_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]processing_0_axi_periph_M00_AXI_WDATA;
  wire processing_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]processing_0_axi_periph_M00_AXI_WSTRB;
  wire processing_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]processing_0_axi_periph_M01_AXI_ARADDR;
  wire processing_0_axi_periph_M01_AXI_ARREADY;
  wire processing_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]processing_0_axi_periph_M01_AXI_AWADDR;
  wire processing_0_axi_periph_M01_AXI_AWREADY;
  wire processing_0_axi_periph_M01_AXI_AWVALID;
  wire processing_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]processing_0_axi_periph_M01_AXI_BRESP;
  wire processing_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]processing_0_axi_periph_M01_AXI_RDATA;
  wire processing_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]processing_0_axi_periph_M01_AXI_RRESP;
  wire processing_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]processing_0_axi_periph_M01_AXI_WDATA;
  wire processing_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]processing_0_axi_periph_M01_AXI_WSTRB;
  wire processing_0_axi_periph_M01_AXI_WVALID;
  wire [31:0]processing_0_axi_periph_M02_AXI_ARADDR;
  wire processing_0_axi_periph_M02_AXI_ARREADY;
  wire processing_0_axi_periph_M02_AXI_ARVALID;
  wire [31:0]processing_0_axi_periph_M02_AXI_AWADDR;
  wire processing_0_axi_periph_M02_AXI_AWREADY;
  wire processing_0_axi_periph_M02_AXI_AWVALID;
  wire processing_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]processing_0_axi_periph_M02_AXI_BRESP;
  wire processing_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]processing_0_axi_periph_M02_AXI_RDATA;
  wire processing_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]processing_0_axi_periph_M02_AXI_RRESP;
  wire processing_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]processing_0_axi_periph_M02_AXI_WDATA;
  wire processing_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]processing_0_axi_periph_M02_AXI_WSTRB;
  wire processing_0_axi_periph_M02_AXI_WVALID;
  wire reset_1;
  wire [0:0]rst_clk_wiz_0_148M_interconnect_aresetn;
  wire [0:0]rst_clk_wiz_0_148M_peripheral_aresetn;
  wire v_axi4s_vid_out_0_locked;
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
  wire [23:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TDEST;
  wire [0:0]v_tpg_0_m_axis_video_TID;
  wire [2:0]v_tpg_0_m_axis_video_TKEEP;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [2:0]v_tpg_0_m_axis_video_TSTRB;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;
  wire [23:0]v_tpg_1_m_axis_video_TDATA;
  wire [0:0]v_tpg_1_m_axis_video_TLAST;
  wire v_tpg_1_m_axis_video_TREADY;
  wire [0:0]v_tpg_1_m_axis_video_TUSER;
  wire v_tpg_1_m_axis_video_TVALID;

  assign aclk_1 = aclk;
  assign locked = v_axi4s_vid_out_0_locked;
  assign reset_1 = reset;
  assign vid_io_out_active_video = v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  assign vid_io_out_data[23:0] = v_axi4s_vid_out_0_vid_io_out_DATA;
  assign vid_io_out_field = v_axi4s_vid_out_0_vid_io_out_FIELD;
  assign vid_io_out_hblank = v_axi4s_vid_out_0_vid_io_out_HBLANK;
  assign vid_io_out_hsync = v_axi4s_vid_out_0_vid_io_out_HSYNC;
  assign vid_io_out_vblank = v_axi4s_vid_out_0_vid_io_out_VBLANK;
  assign vid_io_out_vsync = v_axi4s_vid_out_0_vid_io_out_VSYNC;
  ex_sim_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_1),
        .aresetn(rst_clk_wiz_0_148M_peripheral_aresetn),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  ex_sim_processing_0_axi_periph_0 processing_0_axi_periph
       (.ACLK(aclk_1),
        .ARESETN(rst_clk_wiz_0_148M_interconnect_aresetn),
        .M00_ACLK(aclk_1),
        .M00_ARESETN(rst_clk_wiz_0_148M_peripheral_aresetn),
        .M00_AXI_araddr(processing_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(processing_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(processing_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(processing_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(processing_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(processing_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(processing_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(processing_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(processing_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(processing_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(processing_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(processing_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(processing_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(processing_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(processing_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(processing_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(processing_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(aclk_1),
        .M01_ARESETN(rst_clk_wiz_0_148M_peripheral_aresetn),
        .M01_AXI_araddr(processing_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(processing_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(processing_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(processing_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(processing_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(processing_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(processing_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(processing_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(processing_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(processing_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(processing_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(processing_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(processing_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(processing_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(processing_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(processing_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(processing_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(aclk_1),
        .M02_ARESETN(rst_clk_wiz_0_148M_peripheral_aresetn),
        .M02_AXI_araddr(processing_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(processing_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(processing_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(processing_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(processing_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(processing_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(processing_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(processing_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(processing_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(processing_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(processing_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(processing_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(processing_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(processing_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(processing_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(processing_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(processing_0_axi_periph_M02_AXI_WVALID),
        .S00_ACLK(aclk_1),
        .S00_ARESETN(rst_clk_wiz_0_148M_peripheral_aresetn),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awprot(axi_vip_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID));
  ex_sim_rst_clk_wiz_0_148M_0 rst_clk_wiz_0_148M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(rst_clk_wiz_0_148M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_148M_peripheral_aresetn),
        .slowest_sync_clk(aclk_1));
  ex_sim_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(aclk_1),
        .aclken(1'b1),
        .aresetn(rst_clk_wiz_0_148M_peripheral_aresetn),
        .fid(1'b0),
        .locked(v_axi4s_vid_out_0_locked),
        .s_axis_video_tdata(v_tpg_1_m_axis_video_TDATA),
        .s_axis_video_tlast(v_tpg_1_m_axis_video_TLAST),
        .s_axis_video_tready(v_tpg_1_m_axis_video_TREADY),
        .s_axis_video_tuser(v_tpg_1_m_axis_video_TUSER),
        .s_axis_video_tvalid(v_tpg_1_m_axis_video_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_field_id(v_axi4s_vid_out_0_vid_io_out_FIELD),
        .vid_hblank(v_axi4s_vid_out_0_vid_io_out_HBLANK),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_vblank(v_axi4s_vid_out_0_vid_io_out_VBLANK),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  ex_sim_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(aclk_1),
        .clken(1'b1),
        .fsync_in(1'b0),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(rst_clk_wiz_0_148M_peripheral_aresetn),
        .s_axi_aclk(aclk_1),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(processing_0_axi_periph_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_0_148M_peripheral_aresetn),
        .s_axi_arready(processing_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(processing_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(processing_0_axi_periph_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(processing_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(processing_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(processing_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(processing_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(processing_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(processing_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(processing_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(processing_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(processing_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(processing_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(processing_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(processing_0_axi_periph_M02_AXI_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  ex_sim_v_tpg_0_0 v_tpg_0
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_clk_wiz_0_148M_peripheral_aresetn),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_tpg_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_tpg_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(processing_0_axi_periph_M01_AXI_ARADDR[7:0]),
        .s_axi_CTRL_ARREADY(processing_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(processing_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(processing_0_axi_periph_M01_AXI_AWADDR[7:0]),
        .s_axi_CTRL_AWREADY(processing_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(processing_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_CTRL_BREADY(processing_0_axi_periph_M01_AXI_BREADY),
        .s_axi_CTRL_BRESP(processing_0_axi_periph_M01_AXI_BRESP),
        .s_axi_CTRL_BVALID(processing_0_axi_periph_M01_AXI_BVALID),
        .s_axi_CTRL_RDATA(processing_0_axi_periph_M01_AXI_RDATA),
        .s_axi_CTRL_RREADY(processing_0_axi_periph_M01_AXI_RREADY),
        .s_axi_CTRL_RRESP(processing_0_axi_periph_M01_AXI_RRESP),
        .s_axi_CTRL_RVALID(processing_0_axi_periph_M01_AXI_RVALID),
        .s_axi_CTRL_WDATA(processing_0_axi_periph_M01_AXI_WDATA),
        .s_axi_CTRL_WREADY(processing_0_axi_periph_M01_AXI_WREADY),
        .s_axi_CTRL_WSTRB(processing_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_CTRL_WVALID(processing_0_axi_periph_M01_AXI_WVALID));
  ex_sim_v_tpg_1_0 v_tpg_1
       (.ap_clk(aclk_1),
        .ap_rst_n(rst_clk_wiz_0_148M_peripheral_aresetn),
        .m_axis_video_TDATA(v_tpg_1_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_tpg_1_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_1_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_tpg_1_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_1_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(processing_0_axi_periph_M00_AXI_ARADDR[7:0]),
        .s_axi_CTRL_ARREADY(processing_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(processing_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(processing_0_axi_periph_M00_AXI_AWADDR[7:0]),
        .s_axi_CTRL_AWREADY(processing_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(processing_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_CTRL_BREADY(processing_0_axi_periph_M00_AXI_BREADY),
        .s_axi_CTRL_BRESP(processing_0_axi_periph_M00_AXI_BRESP),
        .s_axi_CTRL_BVALID(processing_0_axi_periph_M00_AXI_BVALID),
        .s_axi_CTRL_RDATA(processing_0_axi_periph_M00_AXI_RDATA),
        .s_axi_CTRL_RREADY(processing_0_axi_periph_M00_AXI_RREADY),
        .s_axi_CTRL_RRESP(processing_0_axi_periph_M00_AXI_RRESP),
        .s_axi_CTRL_RVALID(processing_0_axi_periph_M00_AXI_RVALID),
        .s_axi_CTRL_WDATA(processing_0_axi_periph_M00_AXI_WDATA),
        .s_axi_CTRL_WREADY(processing_0_axi_periph_M00_AXI_WREADY),
        .s_axi_CTRL_WSTRB(processing_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_CTRL_WVALID(processing_0_axi_periph_M00_AXI_WVALID),
        .s_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .s_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .s_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .s_axis_video_TKEEP(v_tpg_0_m_axis_video_TKEEP),
        .s_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .s_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .s_axis_video_TSTRB(v_tpg_0_m_axis_video_TSTRB),
        .s_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .s_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID));
endmodule

module ex_sim_processing_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_processing_0_axi_periph_ARADDR;
  wire m00_couplers_to_processing_0_axi_periph_ARREADY;
  wire m00_couplers_to_processing_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_processing_0_axi_periph_AWADDR;
  wire m00_couplers_to_processing_0_axi_periph_AWREADY;
  wire m00_couplers_to_processing_0_axi_periph_AWVALID;
  wire m00_couplers_to_processing_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_processing_0_axi_periph_BRESP;
  wire m00_couplers_to_processing_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_processing_0_axi_periph_RDATA;
  wire m00_couplers_to_processing_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_processing_0_axi_periph_RRESP;
  wire m00_couplers_to_processing_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_processing_0_axi_periph_WDATA;
  wire m00_couplers_to_processing_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_processing_0_axi_periph_WSTRB;
  wire m00_couplers_to_processing_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_processing_0_axi_periph_ARADDR;
  wire m01_couplers_to_processing_0_axi_periph_ARREADY;
  wire m01_couplers_to_processing_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_processing_0_axi_periph_AWADDR;
  wire m01_couplers_to_processing_0_axi_periph_AWREADY;
  wire m01_couplers_to_processing_0_axi_periph_AWVALID;
  wire m01_couplers_to_processing_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_processing_0_axi_periph_BRESP;
  wire m01_couplers_to_processing_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_processing_0_axi_periph_RDATA;
  wire m01_couplers_to_processing_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_processing_0_axi_periph_RRESP;
  wire m01_couplers_to_processing_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_processing_0_axi_periph_WDATA;
  wire m01_couplers_to_processing_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_processing_0_axi_periph_WSTRB;
  wire m01_couplers_to_processing_0_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_processing_0_axi_periph_ARADDR;
  wire m02_couplers_to_processing_0_axi_periph_ARREADY;
  wire m02_couplers_to_processing_0_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_processing_0_axi_periph_AWADDR;
  wire m02_couplers_to_processing_0_axi_periph_AWREADY;
  wire m02_couplers_to_processing_0_axi_periph_AWVALID;
  wire m02_couplers_to_processing_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_processing_0_axi_periph_BRESP;
  wire m02_couplers_to_processing_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_processing_0_axi_periph_RDATA;
  wire m02_couplers_to_processing_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_processing_0_axi_periph_RRESP;
  wire m02_couplers_to_processing_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_processing_0_axi_periph_WDATA;
  wire m02_couplers_to_processing_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_processing_0_axi_periph_WSTRB;
  wire m02_couplers_to_processing_0_axi_periph_WVALID;
  wire processing_0_axi_periph_ACLK_net;
  wire processing_0_axi_periph_ARESETN_net;
  wire [31:0]processing_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]processing_0_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]processing_0_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]processing_0_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]processing_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]processing_0_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]processing_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]processing_0_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]processing_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]processing_0_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]processing_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_processing_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_processing_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_processing_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_processing_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_processing_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_processing_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_processing_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_processing_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_processing_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_processing_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_processing_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_processing_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_processing_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_processing_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_processing_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_processing_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_processing_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_processing_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_processing_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_processing_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_processing_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_processing_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_processing_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_processing_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_processing_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_processing_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_processing_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_awready[0] = processing_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = processing_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = processing_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_wready[0] = processing_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_processing_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_processing_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_processing_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_processing_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_processing_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_processing_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_processing_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_processing_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_processing_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_processing_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_processing_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_processing_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_processing_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_processing_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_processing_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_processing_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_processing_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_processing_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_processing_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_processing_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_processing_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_processing_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_processing_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_processing_0_axi_periph_WREADY = M02_AXI_wready;
  assign processing_0_axi_periph_ACLK_net = ACLK;
  assign processing_0_axi_periph_ARESETN_net = ARESETN;
  assign processing_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign processing_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign processing_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign processing_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign processing_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign processing_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign processing_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_5KH1VS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_processing_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_processing_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_processing_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_processing_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_processing_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_processing_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_processing_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_processing_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_processing_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_processing_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_processing_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_processing_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_processing_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_processing_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_processing_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_processing_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_processing_0_axi_periph_WVALID),
        .S_ACLK(processing_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1FQN42H m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_processing_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_processing_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_processing_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_processing_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_processing_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_processing_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_processing_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_processing_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_processing_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_processing_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_processing_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_processing_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_processing_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_processing_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_processing_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_processing_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_processing_0_axi_periph_WVALID),
        .S_ACLK(processing_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_14ZA2LN m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_processing_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_processing_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_processing_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_processing_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_processing_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_processing_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_processing_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_processing_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_processing_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_processing_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_processing_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_processing_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_processing_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_processing_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_processing_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_processing_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_processing_0_axi_periph_WVALID),
        .S_ACLK(processing_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_9VU1CP s00_couplers
       (.M_ACLK(processing_0_axi_periph_ACLK_net),
        .M_ARESETN(processing_0_axi_periph_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(processing_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(processing_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(processing_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(processing_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(processing_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(processing_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(processing_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_wdata(processing_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(processing_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(processing_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(processing_0_axi_periph_to_s00_couplers_WVALID));
  ex_sim_xbar_0 xbar
       (.aclk(processing_0_axi_periph_ACLK_net),
        .aresetn(processing_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rready(1'b0),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_5KH1VS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1FQN42H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_14ZA2LN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_9VU1CP
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
