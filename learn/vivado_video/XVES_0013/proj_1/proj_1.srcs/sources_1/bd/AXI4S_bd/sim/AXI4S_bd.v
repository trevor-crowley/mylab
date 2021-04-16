//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jan 24 20:11:07 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target AXI4S_bd.bd
//Design      : AXI4S_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "AXI4S_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXI4S_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "AXI4S_bd.hwdef" *) 
module AXI4S_bd
   (AXIS_out_tdata,
    AXIS_out_tdest,
    AXIS_out_tid,
    AXIS_out_tlast,
    AXIS_out_tready,
    AXIS_out_tuser,
    AXIS_out_tvalid,
    aclk_40MHz,
    aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_out, CLK_DOMAIN AXI4S_bd_aclk_40MHz, FREQ_HZ 40000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 3" *) output [23:0]AXIS_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TDEST" *) output [0:0]AXIS_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TID" *) output [0:0]AXIS_out_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TLAST" *) output AXIS_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TREADY" *) input AXIS_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TUSER" *) output [2:0]AXIS_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TVALID" *) output AXIS_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_40MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_40MHZ, ASSOCIATED_BUSIF AXIS_out, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN AXI4S_bd_aclk_40MHz, FREQ_HZ 40000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_40MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;

  wire [7:0]Green_processing_0_AXIS_green_out_TDATA;
  wire Green_processing_0_AXIS_green_out_TLAST;
  wire [0:0]Green_processing_0_AXIS_green_out_TREADY;
  wire Green_processing_0_AXIS_green_out_TUSER;
  wire Green_processing_0_AXIS_green_out_TVALID;
  wire aclk_0_1;
  wire aresetn_0_1;
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
  wire [7:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TLAST;
  wire axis_broadcaster_0_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TUSER;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [15:8]axis_broadcaster_0_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TDEST;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TID;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TLAST;
  wire axis_broadcaster_0_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TUSER;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  wire [23:16]axis_broadcaster_0_M02_AXIS_TDATA;
  wire [2:2]axis_broadcaster_0_M02_AXIS_TDEST;
  wire [2:2]axis_broadcaster_0_M02_AXIS_TID;
  wire [2:2]axis_broadcaster_0_M02_AXIS_TLAST;
  wire axis_broadcaster_0_M02_AXIS_TREADY;
  wire [2:2]axis_broadcaster_0_M02_AXIS_TUSER;
  wire [2:2]axis_broadcaster_0_M02_AXIS_TVALID;
  wire [23:0]axis_combiner_0_M_AXIS_TDATA;
  wire [0:0]axis_combiner_0_M_AXIS_TDEST;
  wire [0:0]axis_combiner_0_M_AXIS_TID;
  wire axis_combiner_0_M_AXIS_TLAST;
  wire axis_combiner_0_M_AXIS_TREADY;
  wire [2:0]axis_combiner_0_M_AXIS_TUSER;
  wire axis_combiner_0_M_AXIS_TVALID;
  wire [7:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [0:0]axis_data_fifo_0_M_AXIS_TDEST;
  wire [0:0]axis_data_fifo_0_M_AXIS_TID;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire [1:1]axis_data_fifo_0_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [7:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire [0:0]axis_data_fifo_1_M_AXIS_TDEST;
  wire [0:0]axis_data_fifo_1_M_AXIS_TID;
  wire axis_data_fifo_1_M_AXIS_TLAST;
  wire [2:2]axis_data_fifo_1_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_1_M_AXIS_TUSER;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [23:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TDEST;
  wire [0:0]v_tpg_0_m_axis_video_TID;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;
  wire [2:0]NLW_axis_broadcaster_0_m_axis_tdest_UNCONNECTED;
  wire [2:0]NLW_axis_broadcaster_0_m_axis_tid_UNCONNECTED;

  assign AXIS_out_tdata[23:0] = axis_combiner_0_M_AXIS_TDATA;
  assign AXIS_out_tdest[0] = axis_combiner_0_M_AXIS_TDEST;
  assign AXIS_out_tid[0] = axis_combiner_0_M_AXIS_TID;
  assign AXIS_out_tlast = axis_combiner_0_M_AXIS_TLAST;
  assign AXIS_out_tuser[2:0] = axis_combiner_0_M_AXIS_TUSER;
  assign AXIS_out_tvalid = axis_combiner_0_M_AXIS_TVALID;
  assign aclk_0_1 = aclk_40MHz;
  assign aresetn_0_1 = aresetn_0;
  assign axis_combiner_0_M_AXIS_TREADY = AXIS_out_tready;
  AXI4S_bd_Green_processing_0_0 Green_processing_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .axis_green_in_tdata(axis_broadcaster_0_M00_AXIS_TDATA),
        .axis_green_in_tlast(axis_broadcaster_0_M00_AXIS_TLAST),
        .axis_green_in_tready(axis_broadcaster_0_M00_AXIS_TREADY),
        .axis_green_in_tuser(axis_broadcaster_0_M00_AXIS_TUSER),
        .axis_green_in_tvalid(axis_broadcaster_0_M00_AXIS_TVALID),
        .axis_green_out_tdata(Green_processing_0_AXIS_green_out_TDATA),
        .axis_green_out_tlast(Green_processing_0_AXIS_green_out_TLAST),
        .axis_green_out_tready(Green_processing_0_AXIS_green_out_TREADY),
        .axis_green_out_tuser(Green_processing_0_AXIS_green_out_TUSER),
        .axis_green_out_tvalid(Green_processing_0_AXIS_green_out_TVALID));
  AXI4S_bd_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
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
  AXI4S_bd_axis_broadcaster_0_0 axis_broadcaster_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata({axis_broadcaster_0_M02_AXIS_TDATA,axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tdest({axis_broadcaster_0_M02_AXIS_TDEST,axis_broadcaster_0_M01_AXIS_TDEST,NLW_axis_broadcaster_0_m_axis_tdest_UNCONNECTED[0]}),
        .m_axis_tid({axis_broadcaster_0_M02_AXIS_TID,axis_broadcaster_0_M01_AXIS_TID,NLW_axis_broadcaster_0_m_axis_tid_UNCONNECTED[0]}),
        .m_axis_tlast({axis_broadcaster_0_M02_AXIS_TLAST,axis_broadcaster_0_M01_AXIS_TLAST,axis_broadcaster_0_M00_AXIS_TLAST}),
        .m_axis_tready({axis_broadcaster_0_M02_AXIS_TREADY,axis_broadcaster_0_M01_AXIS_TREADY,axis_broadcaster_0_M00_AXIS_TREADY}),
        .m_axis_tuser({axis_broadcaster_0_M02_AXIS_TUSER,axis_broadcaster_0_M01_AXIS_TUSER,axis_broadcaster_0_M00_AXIS_TUSER}),
        .m_axis_tvalid({axis_broadcaster_0_M02_AXIS_TVALID,axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata(v_tpg_0_m_axis_video_TDATA),
        .s_axis_tdest(v_tpg_0_m_axis_video_TDEST),
        .s_axis_tid(v_tpg_0_m_axis_video_TID),
        .s_axis_tlast(v_tpg_0_m_axis_video_TLAST),
        .s_axis_tready(v_tpg_0_m_axis_video_TREADY),
        .s_axis_tuser(v_tpg_0_m_axis_video_TUSER),
        .s_axis_tvalid(v_tpg_0_m_axis_video_TVALID));
  AXI4S_bd_axis_combiner_0_0 axis_combiner_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(axis_combiner_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_combiner_0_M_AXIS_TDEST),
        .m_axis_tid(axis_combiner_0_M_AXIS_TID),
        .m_axis_tlast(axis_combiner_0_M_AXIS_TLAST),
        .m_axis_tready(axis_combiner_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_combiner_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_combiner_0_M_AXIS_TVALID),
        .s_axis_tdata({axis_data_fifo_1_M_AXIS_TDATA,axis_data_fifo_0_M_AXIS_TDATA,Green_processing_0_AXIS_green_out_TDATA}),
        .s_axis_tdest({axis_data_fifo_1_M_AXIS_TDEST,axis_data_fifo_0_M_AXIS_TDEST,1'b0}),
        .s_axis_tid({axis_data_fifo_1_M_AXIS_TID,axis_data_fifo_0_M_AXIS_TID,1'b0}),
        .s_axis_tlast({axis_data_fifo_1_M_AXIS_TLAST,axis_data_fifo_0_M_AXIS_TLAST,Green_processing_0_AXIS_green_out_TLAST}),
        .s_axis_tready({axis_data_fifo_1_M_AXIS_TREADY,axis_data_fifo_0_M_AXIS_TREADY,Green_processing_0_AXIS_green_out_TREADY}),
        .s_axis_tuser({axis_data_fifo_1_M_AXIS_TUSER,axis_data_fifo_0_M_AXIS_TUSER,Green_processing_0_AXIS_green_out_TUSER}),
        .s_axis_tvalid({axis_data_fifo_1_M_AXIS_TVALID,axis_data_fifo_0_M_AXIS_TVALID,Green_processing_0_AXIS_green_out_TVALID}));
  AXI4S_bd_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_0_M_AXIS_TDEST),
        .m_axis_tid(axis_data_fifo_0_M_AXIS_TID),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(aclk_0_1),
        .s_axis_aresetn(aresetn_0_1),
        .s_axis_tdata(axis_broadcaster_0_M01_AXIS_TDATA),
        .s_axis_tdest(axis_broadcaster_0_M01_AXIS_TDEST),
        .s_axis_tid(axis_broadcaster_0_M01_AXIS_TID),
        .s_axis_tlast(axis_broadcaster_0_M01_AXIS_TLAST),
        .s_axis_tready(axis_broadcaster_0_M01_AXIS_TREADY),
        .s_axis_tuser(axis_broadcaster_0_M01_AXIS_TUSER),
        .s_axis_tvalid(axis_broadcaster_0_M01_AXIS_TVALID));
  AXI4S_bd_axis_data_fifo_0_1 axis_data_fifo_1
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_1_M_AXIS_TDEST),
        .m_axis_tid(axis_data_fifo_1_M_AXIS_TID),
        .m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_1_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(aclk_0_1),
        .s_axis_aresetn(aresetn_0_1),
        .s_axis_tdata(axis_broadcaster_0_M02_AXIS_TDATA),
        .s_axis_tdest(axis_broadcaster_0_M02_AXIS_TDEST),
        .s_axis_tid(axis_broadcaster_0_M02_AXIS_TID),
        .s_axis_tlast(axis_broadcaster_0_M02_AXIS_TLAST),
        .s_axis_tready(axis_broadcaster_0_M02_AXIS_TREADY),
        .s_axis_tuser(axis_broadcaster_0_M02_AXIS_TUSER),
        .s_axis_tvalid(axis_broadcaster_0_M02_AXIS_TVALID));
  AXI4S_bd_v_tpg_0_0 v_tpg_0
       (.ap_clk(aclk_0_1),
        .ap_rst_n(aresetn_0_1),
        .fid_in(1'b1),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
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
