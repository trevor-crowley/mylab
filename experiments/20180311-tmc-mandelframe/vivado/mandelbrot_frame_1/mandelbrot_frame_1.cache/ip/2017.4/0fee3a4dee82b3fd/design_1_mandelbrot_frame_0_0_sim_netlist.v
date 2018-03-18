// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Mar 11 22:07:49 2018
// Host        : luigilinux running 64-bit openSUSE Leap 42.3
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mandelbrot_frame_0_0_sim_netlist.v
// Design      : design_1_mandelbrot_frame_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mandelbrot_frame_0_0,mandelbrot_frame,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mandelbrot_frame,Vivado 2017.4" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    video_out_TVALID,
    video_out_TREADY,
    video_out_TDATA,
    video_out_TDEST,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST,
    video_out_TID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 450000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output video_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) output [23:0]video_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDEST" *) output [0:0]video_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TKEEP" *) output [2:0]video_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TSTRB" *) output [2:0]video_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output [0:0]video_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 450000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) output [0:0]video_out_TID;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [23:0]video_out_TDATA;
  wire [0:0]video_out_TDEST;
  wire [0:0]video_out_TID;
  wire [2:0]video_out_TKEEP;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [2:0]video_out_TSTRB;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;

  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .video_out_TDATA(video_out_TDATA),
        .video_out_TDEST(video_out_TDEST),
        .video_out_TID(video_out_TID),
        .video_out_TKEEP(video_out_TKEEP),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB),
        .video_out_TUSER(video_out_TUSER),
        .video_out_TVALID(video_out_TVALID));
endmodule

(* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state3 = "4'b0100" *) 
(* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    video_out_TDATA,
    video_out_TVALID,
    video_out_TREADY,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST,
    video_out_TID,
    video_out_TDEST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [23:0]video_out_TDATA;
  output video_out_TVALID;
  input video_out_TREADY;
  output [2:0]video_out_TKEEP;
  output [2:0]video_out_TSTRB;
  output [0:0]video_out_TUSER;
  output [0:0]video_out_TLAST;
  output [0:0]video_out_TID;
  output [0:0]video_out_TDEST;

  wire \<const0> ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_4_n_0 ;
  wire \ap_CS_fsm[3]_i_5_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire mandelbrot_frame_cud_U1_n_10;
  wire mandelbrot_frame_cud_U1_n_11;
  wire mandelbrot_frame_cud_U1_n_12;
  wire mandelbrot_frame_cud_U1_n_13;
  wire mandelbrot_frame_cud_U1_n_14;
  wire mandelbrot_frame_cud_U1_n_2;
  wire mandelbrot_frame_cud_U1_n_3;
  wire mandelbrot_frame_cud_U1_n_4;
  wire mandelbrot_frame_cud_U1_n_5;
  wire mandelbrot_frame_cud_U1_n_6;
  wire mandelbrot_frame_cud_U1_n_7;
  wire mandelbrot_frame_cud_U1_n_8;
  wire mandelbrot_frame_cud_U1_n_9;
  wire tmp_last_V_reg_2470;
  wire \tmp_last_V_reg_247[0]_i_1_n_0 ;
  wire \tmp_last_V_reg_247[0]_i_2_n_0 ;
  wire \tmp_last_V_reg_247[0]_i_3_n_0 ;
  wire tmp_s_reg_229_reg_n_106;
  wire tmp_s_reg_229_reg_n_107;
  wire tmp_s_reg_229_reg_n_108;
  wire tmp_s_reg_229_reg_n_109;
  wire tmp_s_reg_229_reg_n_110;
  wire tmp_s_reg_229_reg_n_111;
  wire tmp_s_reg_229_reg_n_112;
  wire tmp_s_reg_229_reg_n_113;
  wire tmp_s_reg_229_reg_n_114;
  wire tmp_s_reg_229_reg_n_115;
  wire tmp_s_reg_229_reg_n_116;
  wire tmp_s_reg_229_reg_n_117;
  wire tmp_s_reg_229_reg_n_118;
  wire tmp_s_reg_229_reg_n_119;
  wire tmp_s_reg_229_reg_n_120;
  wire tmp_s_reg_229_reg_n_121;
  wire tmp_s_reg_229_reg_n_122;
  wire tmp_s_reg_229_reg_n_123;
  wire tmp_s_reg_229_reg_n_124;
  wire tmp_s_reg_229_reg_n_125;
  wire tmp_s_reg_229_reg_n_126;
  wire tmp_s_reg_229_reg_n_127;
  wire tmp_s_reg_229_reg_n_128;
  wire tmp_s_reg_229_reg_n_129;
  wire tmp_s_reg_229_reg_n_130;
  wire tmp_s_reg_229_reg_n_131;
  wire tmp_s_reg_229_reg_n_132;
  wire tmp_s_reg_229_reg_n_133;
  wire tmp_s_reg_229_reg_n_134;
  wire tmp_s_reg_229_reg_n_135;
  wire tmp_s_reg_229_reg_n_136;
  wire tmp_s_reg_229_reg_n_137;
  wire tmp_s_reg_229_reg_n_138;
  wire tmp_s_reg_229_reg_n_139;
  wire tmp_s_reg_229_reg_n_140;
  wire tmp_s_reg_229_reg_n_141;
  wire tmp_s_reg_229_reg_n_142;
  wire tmp_s_reg_229_reg_n_143;
  wire tmp_s_reg_229_reg_n_144;
  wire tmp_s_reg_229_reg_n_145;
  wire tmp_s_reg_229_reg_n_146;
  wire tmp_s_reg_229_reg_n_147;
  wire tmp_s_reg_229_reg_n_148;
  wire tmp_s_reg_229_reg_n_149;
  wire tmp_s_reg_229_reg_n_150;
  wire tmp_s_reg_229_reg_n_151;
  wire tmp_s_reg_229_reg_n_152;
  wire tmp_s_reg_229_reg_n_153;
  wire \tmp_user_V_reg_242[0]_i_1_n_0 ;
  wire \tmp_user_V_reg_242[0]_i_2_n_0 ;
  wire \tmp_user_V_reg_242[0]_i_3_n_0 ;
  wire [11:0]\^video_out_TDATA ;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;
  wire [9:0]x_1_fu_156_p2;
  wire [9:0]x_1_reg_237;
  wire \x_1_reg_237[9]_i_2_n_0 ;
  wire [9:0]x_reg_117;
  wire x_reg_1170;
  wire [8:0]y_1_fu_134_p2;
  wire [8:0]y_1_reg_224;
  wire \y_1_reg_224[8]_i_2_n_0 ;
  wire y_reg_105;
  wire \y_reg_105_reg_n_0_[0] ;
  wire \y_reg_105_reg_n_0_[1] ;
  wire \y_reg_105_reg_n_0_[2] ;
  wire \y_reg_105_reg_n_0_[3] ;
  wire \y_reg_105_reg_n_0_[4] ;
  wire \y_reg_105_reg_n_0_[5] ;
  wire \y_reg_105_reg_n_0_[6] ;
  wire \y_reg_105_reg_n_0_[7] ;
  wire \y_reg_105_reg_n_0_[8] ;
  wire NLW_tmp_s_reg_229_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_s_reg_229_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_s_reg_229_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_s_reg_229_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_s_reg_229_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_s_reg_229_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_s_reg_229_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_s_reg_229_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_s_reg_229_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_s_reg_229_reg_P_UNCONNECTED;

  assign ap_ready = ap_done;
  assign video_out_TDATA[23] = \<const0> ;
  assign video_out_TDATA[22] = \<const0> ;
  assign video_out_TDATA[21] = \<const0> ;
  assign video_out_TDATA[20] = \<const0> ;
  assign video_out_TDATA[19] = \<const0> ;
  assign video_out_TDATA[18] = \<const0> ;
  assign video_out_TDATA[17] = \<const0> ;
  assign video_out_TDATA[16] = \<const0> ;
  assign video_out_TDATA[15] = \<const0> ;
  assign video_out_TDATA[14] = \<const0> ;
  assign video_out_TDATA[13] = \<const0> ;
  assign video_out_TDATA[12] = \<const0> ;
  assign video_out_TDATA[11:0] = \^video_out_TDATA [11:0];
  assign video_out_TDEST[0] = \<const0> ;
  assign video_out_TID[0] = \<const0> ;
  assign video_out_TKEEP[2] = \<const0> ;
  assign video_out_TKEEP[1] = \<const0> ;
  assign video_out_TKEEP[0] = \<const0> ;
  assign video_out_TSTRB[2] = \<const0> ;
  assign video_out_TSTRB[1] = \<const0> ;
  assign video_out_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT3 #(
    .INIT(8'h8F)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\ap_CS_fsm[1]_i_2_n_0 ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm[3]_i_4_n_0 ),
        .I1(x_reg_117[9]),
        .I2(x_reg_117[8]),
        .I3(x_reg_117[7]),
        .I4(ap_CS_fsm_state3),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(x_reg_1170),
        .I1(video_out_TVALID),
        .I2(video_out_TREADY),
        .O(ap_NS_fsm[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(tmp_last_V_reg_2470),
        .I1(video_out_TREADY),
        .I2(video_out_TVALID),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBFF0000)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(\ap_CS_fsm[3]_i_4_n_0 ),
        .I1(x_reg_117[9]),
        .I2(x_reg_117[8]),
        .I3(x_reg_117[7]),
        .I4(ap_CS_fsm_state3),
        .O(tmp_last_V_reg_2470));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(\ap_CS_fsm[3]_i_5_n_0 ),
        .I1(x_reg_117[0]),
        .I2(x_reg_117[5]),
        .I3(x_reg_117[6]),
        .O(\ap_CS_fsm[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_5 
       (.I0(x_reg_117[2]),
        .I1(x_reg_117[1]),
        .I2(x_reg_117[4]),
        .I3(x_reg_117[3]),
        .O(\ap_CS_fsm[3]_i_5_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(video_out_TVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(mandelbrot_frame_cud_U1_n_2),
        .I2(\y_reg_105_reg_n_0_[7] ),
        .I3(\y_reg_105_reg_n_0_[5] ),
        .I4(\y_reg_105_reg_n_0_[6] ),
        .I5(\y_reg_105_reg_n_0_[8] ),
        .O(ap_done));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud mandelbrot_frame_cud_U1
       (.D({mandelbrot_frame_cud_U1_n_3,mandelbrot_frame_cud_U1_n_4,mandelbrot_frame_cud_U1_n_5,mandelbrot_frame_cud_U1_n_6,mandelbrot_frame_cud_U1_n_7,mandelbrot_frame_cud_U1_n_8,mandelbrot_frame_cud_U1_n_9,mandelbrot_frame_cud_U1_n_10,mandelbrot_frame_cud_U1_n_11,mandelbrot_frame_cud_U1_n_12,mandelbrot_frame_cud_U1_n_13,mandelbrot_frame_cud_U1_n_14}),
        .E(ap_NS_fsm1),
        .PCOUT({tmp_s_reg_229_reg_n_106,tmp_s_reg_229_reg_n_107,tmp_s_reg_229_reg_n_108,tmp_s_reg_229_reg_n_109,tmp_s_reg_229_reg_n_110,tmp_s_reg_229_reg_n_111,tmp_s_reg_229_reg_n_112,tmp_s_reg_229_reg_n_113,tmp_s_reg_229_reg_n_114,tmp_s_reg_229_reg_n_115,tmp_s_reg_229_reg_n_116,tmp_s_reg_229_reg_n_117,tmp_s_reg_229_reg_n_118,tmp_s_reg_229_reg_n_119,tmp_s_reg_229_reg_n_120,tmp_s_reg_229_reg_n_121,tmp_s_reg_229_reg_n_122,tmp_s_reg_229_reg_n_123,tmp_s_reg_229_reg_n_124,tmp_s_reg_229_reg_n_125,tmp_s_reg_229_reg_n_126,tmp_s_reg_229_reg_n_127,tmp_s_reg_229_reg_n_128,tmp_s_reg_229_reg_n_129,tmp_s_reg_229_reg_n_130,tmp_s_reg_229_reg_n_131,tmp_s_reg_229_reg_n_132,tmp_s_reg_229_reg_n_133,tmp_s_reg_229_reg_n_134,tmp_s_reg_229_reg_n_135,tmp_s_reg_229_reg_n_136,tmp_s_reg_229_reg_n_137,tmp_s_reg_229_reg_n_138,tmp_s_reg_229_reg_n_139,tmp_s_reg_229_reg_n_140,tmp_s_reg_229_reg_n_141,tmp_s_reg_229_reg_n_142,tmp_s_reg_229_reg_n_143,tmp_s_reg_229_reg_n_144,tmp_s_reg_229_reg_n_145,tmp_s_reg_229_reg_n_146,tmp_s_reg_229_reg_n_147,tmp_s_reg_229_reg_n_148,tmp_s_reg_229_reg_n_149,tmp_s_reg_229_reg_n_150,tmp_s_reg_229_reg_n_151,tmp_s_reg_229_reg_n_152,tmp_s_reg_229_reg_n_153}),
        .Q(x_1_reg_237[7:0]),
        .\ap_CS_fsm_reg[3] ({video_out_TVALID,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .p(mandelbrot_frame_cud_U1_n_2),
        .video_out_TREADY(video_out_TREADY),
        .x_reg_1170(x_reg_1170),
        .\y_reg_105_reg[8] ({\y_reg_105_reg_n_0_[8] ,\y_reg_105_reg_n_0_[7] ,\y_reg_105_reg_n_0_[6] ,\y_reg_105_reg_n_0_[5] ,\y_reg_105_reg_n_0_[4] ,\y_reg_105_reg_n_0_[3] ,\y_reg_105_reg_n_0_[2] ,\y_reg_105_reg_n_0_[1] ,\y_reg_105_reg_n_0_[0] }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb palette_V_U
       (.D({mandelbrot_frame_cud_U1_n_3,mandelbrot_frame_cud_U1_n_4,mandelbrot_frame_cud_U1_n_5,mandelbrot_frame_cud_U1_n_6,mandelbrot_frame_cud_U1_n_7,mandelbrot_frame_cud_U1_n_8,mandelbrot_frame_cud_U1_n_9,mandelbrot_frame_cud_U1_n_10,mandelbrot_frame_cud_U1_n_11,mandelbrot_frame_cud_U1_n_12,mandelbrot_frame_cud_U1_n_13,mandelbrot_frame_cud_U1_n_14}),
        .Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .video_out_TDATA(\^video_out_TDATA ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \tmp_last_V_reg_247[0]_i_1 
       (.I0(\tmp_last_V_reg_247[0]_i_2_n_0 ),
        .I1(x_reg_117[7]),
        .I2(ap_CS_fsm_state3),
        .I3(\tmp_last_V_reg_247[0]_i_3_n_0 ),
        .I4(tmp_last_V_reg_2470),
        .I5(video_out_TLAST),
        .O(\tmp_last_V_reg_247[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmp_last_V_reg_247[0]_i_2 
       (.I0(\x_1_reg_237[9]_i_2_n_0 ),
        .I1(x_reg_117[6]),
        .O(\tmp_last_V_reg_247[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tmp_last_V_reg_247[0]_i_3 
       (.I0(x_reg_117[8]),
        .I1(x_reg_117[9]),
        .O(\tmp_last_V_reg_247[0]_i_3_n_0 ));
  FDRE \tmp_last_V_reg_247_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_last_V_reg_247[0]_i_1_n_0 ),
        .Q(video_out_TLAST),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_s_reg_229_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_1_reg_224}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_s_reg_229_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_1_reg_224}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_s_reg_229_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_s_reg_229_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_s_reg_229_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_NS_fsm15_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_NS_fsm15_out),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(x_reg_1170),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_s_reg_229_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_s_reg_229_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_tmp_s_reg_229_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_tmp_s_reg_229_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_s_reg_229_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmp_s_reg_229_reg_n_106,tmp_s_reg_229_reg_n_107,tmp_s_reg_229_reg_n_108,tmp_s_reg_229_reg_n_109,tmp_s_reg_229_reg_n_110,tmp_s_reg_229_reg_n_111,tmp_s_reg_229_reg_n_112,tmp_s_reg_229_reg_n_113,tmp_s_reg_229_reg_n_114,tmp_s_reg_229_reg_n_115,tmp_s_reg_229_reg_n_116,tmp_s_reg_229_reg_n_117,tmp_s_reg_229_reg_n_118,tmp_s_reg_229_reg_n_119,tmp_s_reg_229_reg_n_120,tmp_s_reg_229_reg_n_121,tmp_s_reg_229_reg_n_122,tmp_s_reg_229_reg_n_123,tmp_s_reg_229_reg_n_124,tmp_s_reg_229_reg_n_125,tmp_s_reg_229_reg_n_126,tmp_s_reg_229_reg_n_127,tmp_s_reg_229_reg_n_128,tmp_s_reg_229_reg_n_129,tmp_s_reg_229_reg_n_130,tmp_s_reg_229_reg_n_131,tmp_s_reg_229_reg_n_132,tmp_s_reg_229_reg_n_133,tmp_s_reg_229_reg_n_134,tmp_s_reg_229_reg_n_135,tmp_s_reg_229_reg_n_136,tmp_s_reg_229_reg_n_137,tmp_s_reg_229_reg_n_138,tmp_s_reg_229_reg_n_139,tmp_s_reg_229_reg_n_140,tmp_s_reg_229_reg_n_141,tmp_s_reg_229_reg_n_142,tmp_s_reg_229_reg_n_143,tmp_s_reg_229_reg_n_144,tmp_s_reg_229_reg_n_145,tmp_s_reg_229_reg_n_146,tmp_s_reg_229_reg_n_147,tmp_s_reg_229_reg_n_148,tmp_s_reg_229_reg_n_149,tmp_s_reg_229_reg_n_150,tmp_s_reg_229_reg_n_151,tmp_s_reg_229_reg_n_152,tmp_s_reg_229_reg_n_153}),
        .RSTA(y_reg_105),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(y_reg_105),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_s_reg_229_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hBA)) 
    \tmp_user_V_reg_242[0]_i_1 
       (.I0(\tmp_user_V_reg_242[0]_i_2_n_0 ),
        .I1(tmp_last_V_reg_2470),
        .I2(video_out_TUSER),
        .O(\tmp_user_V_reg_242[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \tmp_user_V_reg_242[0]_i_2 
       (.I0(\ap_CS_fsm[3]_i_4_n_0 ),
        .I1(\tmp_user_V_reg_242[0]_i_3_n_0 ),
        .I2(mandelbrot_frame_cud_U1_n_2),
        .I3(\y_reg_105_reg_n_0_[5] ),
        .I4(\y_reg_105_reg_n_0_[6] ),
        .O(\tmp_user_V_reg_242[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \tmp_user_V_reg_242[0]_i_3 
       (.I0(x_reg_117[7]),
        .I1(x_reg_117[8]),
        .I2(\y_reg_105_reg_n_0_[7] ),
        .I3(\y_reg_105_reg_n_0_[8] ),
        .I4(x_reg_117[9]),
        .I5(ap_CS_fsm_state3),
        .O(\tmp_user_V_reg_242[0]_i_3_n_0 ));
  FDRE \tmp_user_V_reg_242_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_user_V_reg_242[0]_i_1_n_0 ),
        .Q(video_out_TUSER),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x_1_reg_237[0]_i_1 
       (.I0(x_reg_117[0]),
        .O(x_1_fu_156_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_1_reg_237[1]_i_1 
       (.I0(x_reg_117[0]),
        .I1(x_reg_117[1]),
        .O(x_1_fu_156_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_1_reg_237[2]_i_1 
       (.I0(x_reg_117[1]),
        .I1(x_reg_117[0]),
        .I2(x_reg_117[2]),
        .O(x_1_fu_156_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_1_reg_237[3]_i_1 
       (.I0(x_reg_117[2]),
        .I1(x_reg_117[0]),
        .I2(x_reg_117[1]),
        .I3(x_reg_117[3]),
        .O(x_1_fu_156_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_1_reg_237[4]_i_1 
       (.I0(x_reg_117[3]),
        .I1(x_reg_117[1]),
        .I2(x_reg_117[0]),
        .I3(x_reg_117[2]),
        .I4(x_reg_117[4]),
        .O(x_1_fu_156_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_1_reg_237[5]_i_1 
       (.I0(x_reg_117[4]),
        .I1(x_reg_117[2]),
        .I2(x_reg_117[0]),
        .I3(x_reg_117[1]),
        .I4(x_reg_117[3]),
        .I5(x_reg_117[5]),
        .O(x_1_fu_156_p2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \x_1_reg_237[6]_i_1 
       (.I0(\x_1_reg_237[9]_i_2_n_0 ),
        .I1(x_reg_117[6]),
        .O(x_1_fu_156_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \x_1_reg_237[7]_i_1 
       (.I0(x_reg_117[6]),
        .I1(\x_1_reg_237[9]_i_2_n_0 ),
        .I2(x_reg_117[7]),
        .O(x_1_fu_156_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x_1_reg_237[8]_i_1 
       (.I0(x_reg_117[7]),
        .I1(\x_1_reg_237[9]_i_2_n_0 ),
        .I2(x_reg_117[6]),
        .I3(x_reg_117[8]),
        .O(x_1_fu_156_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCC6CCCCC)) 
    \x_1_reg_237[9]_i_1 
       (.I0(x_reg_117[8]),
        .I1(x_reg_117[9]),
        .I2(x_reg_117[6]),
        .I3(\x_1_reg_237[9]_i_2_n_0 ),
        .I4(x_reg_117[7]),
        .O(x_1_fu_156_p2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x_1_reg_237[9]_i_2 
       (.I0(x_reg_117[4]),
        .I1(x_reg_117[2]),
        .I2(x_reg_117[0]),
        .I3(x_reg_117[1]),
        .I4(x_reg_117[3]),
        .I5(x_reg_117[5]),
        .O(\x_1_reg_237[9]_i_2_n_0 ));
  FDRE \x_1_reg_237_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[0]),
        .Q(x_1_reg_237[0]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[1]),
        .Q(x_1_reg_237[1]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[2]),
        .Q(x_1_reg_237[2]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[3]),
        .Q(x_1_reg_237[3]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[4]),
        .Q(x_1_reg_237[4]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[5]),
        .Q(x_1_reg_237[5]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[6]),
        .Q(x_1_reg_237[6]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[7]),
        .Q(x_1_reg_237[7]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[8]),
        .Q(x_1_reg_237[8]),
        .R(1'b0));
  FDRE \x_1_reg_237_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_1_fu_156_p2[9]),
        .Q(x_1_reg_237[9]),
        .R(1'b0));
  FDRE \x_reg_117_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[0]),
        .Q(x_reg_117[0]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[1]),
        .Q(x_reg_117[1]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[2]),
        .Q(x_reg_117[2]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[3]),
        .Q(x_reg_117[3]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[4]),
        .Q(x_reg_117[4]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[5]),
        .Q(x_reg_117[5]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[6]),
        .Q(x_reg_117[6]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[7]),
        .Q(x_reg_117[7]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[8]),
        .Q(x_reg_117[8]),
        .R(x_reg_1170));
  FDRE \x_reg_117_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_1_reg_237[9]),
        .Q(x_reg_117[9]),
        .R(x_reg_1170));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \y_1_reg_224[0]_i_1 
       (.I0(\y_reg_105_reg_n_0_[0] ),
        .O(y_1_fu_134_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_1_reg_224[1]_i_1 
       (.I0(\y_reg_105_reg_n_0_[0] ),
        .I1(\y_reg_105_reg_n_0_[1] ),
        .O(y_1_fu_134_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_1_reg_224[2]_i_1 
       (.I0(\y_reg_105_reg_n_0_[1] ),
        .I1(\y_reg_105_reg_n_0_[0] ),
        .I2(\y_reg_105_reg_n_0_[2] ),
        .O(y_1_fu_134_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_1_reg_224[3]_i_1 
       (.I0(\y_reg_105_reg_n_0_[2] ),
        .I1(\y_reg_105_reg_n_0_[0] ),
        .I2(\y_reg_105_reg_n_0_[1] ),
        .I3(\y_reg_105_reg_n_0_[3] ),
        .O(y_1_fu_134_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_1_reg_224[4]_i_1 
       (.I0(\y_reg_105_reg_n_0_[3] ),
        .I1(\y_reg_105_reg_n_0_[1] ),
        .I2(\y_reg_105_reg_n_0_[0] ),
        .I3(\y_reg_105_reg_n_0_[2] ),
        .I4(\y_reg_105_reg_n_0_[4] ),
        .O(y_1_fu_134_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_1_reg_224[5]_i_1 
       (.I0(\y_reg_105_reg_n_0_[4] ),
        .I1(\y_reg_105_reg_n_0_[2] ),
        .I2(\y_reg_105_reg_n_0_[0] ),
        .I3(\y_reg_105_reg_n_0_[1] ),
        .I4(\y_reg_105_reg_n_0_[3] ),
        .I5(\y_reg_105_reg_n_0_[5] ),
        .O(y_1_fu_134_p2[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \y_1_reg_224[6]_i_1 
       (.I0(\y_reg_105_reg_n_0_[5] ),
        .I1(\y_1_reg_224[8]_i_2_n_0 ),
        .I2(\y_reg_105_reg_n_0_[6] ),
        .O(y_1_fu_134_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \y_1_reg_224[7]_i_1 
       (.I0(\y_reg_105_reg_n_0_[5] ),
        .I1(\y_reg_105_reg_n_0_[6] ),
        .I2(\y_1_reg_224[8]_i_2_n_0 ),
        .I3(\y_reg_105_reg_n_0_[7] ),
        .O(y_1_fu_134_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \y_1_reg_224[8]_i_1 
       (.I0(\y_1_reg_224[8]_i_2_n_0 ),
        .I1(\y_reg_105_reg_n_0_[6] ),
        .I2(\y_reg_105_reg_n_0_[5] ),
        .I3(\y_reg_105_reg_n_0_[7] ),
        .I4(\y_reg_105_reg_n_0_[8] ),
        .O(y_1_fu_134_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \y_1_reg_224[8]_i_2 
       (.I0(\y_reg_105_reg_n_0_[3] ),
        .I1(\y_reg_105_reg_n_0_[1] ),
        .I2(\y_reg_105_reg_n_0_[0] ),
        .I3(\y_reg_105_reg_n_0_[2] ),
        .I4(\y_reg_105_reg_n_0_[4] ),
        .O(\y_1_reg_224[8]_i_2_n_0 ));
  FDRE \y_1_reg_224_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[0]),
        .Q(y_1_reg_224[0]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[1]),
        .Q(y_1_reg_224[1]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[2]),
        .Q(y_1_reg_224[2]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[3]),
        .Q(y_1_reg_224[3]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[4]),
        .Q(y_1_reg_224[4]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[5]),
        .Q(y_1_reg_224[5]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[6]),
        .Q(y_1_reg_224[6]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[7]),
        .Q(y_1_reg_224[7]),
        .R(1'b0));
  FDRE \y_1_reg_224_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_134_p2[8]),
        .Q(y_1_reg_224[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \y_reg_105[8]_i_1 
       (.I0(\ap_CS_fsm[1]_i_2_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(y_reg_105));
  LUT1 #(
    .INIT(2'h1)) 
    \y_reg_105[8]_i_2 
       (.I0(\ap_CS_fsm[1]_i_2_n_0 ),
        .O(ap_NS_fsm15_out));
  FDRE \y_reg_105_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[0]),
        .Q(\y_reg_105_reg_n_0_[0] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[1]),
        .Q(\y_reg_105_reg_n_0_[1] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[2]),
        .Q(\y_reg_105_reg_n_0_[2] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[3]),
        .Q(\y_reg_105_reg_n_0_[3] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[4]),
        .Q(\y_reg_105_reg_n_0_[4] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[5]),
        .Q(\y_reg_105_reg_n_0_[5] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[6]),
        .Q(\y_reg_105_reg_n_0_[6] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[7]),
        .Q(\y_reg_105_reg_n_0_[7] ),
        .R(y_reg_105));
  FDRE \y_reg_105_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_1_reg_224[8]),
        .Q(\y_reg_105_reg_n_0_[8] ),
        .R(y_reg_105));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb
   (video_out_TDATA,
    Q,
    D,
    ap_clk);
  output [11:0]video_out_TDATA;
  input [0:0]Q;
  input [11:0]D;
  input ap_clk;

  wire [11:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire [11:0]video_out_TDATA;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb_rom mandelbrot_frame_bkb_rom_U
       (.D(D),
        .Q(Q),
        .ap_clk(ap_clk),
        .video_out_TDATA(video_out_TDATA));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb_rom
   (video_out_TDATA,
    Q,
    D,
    ap_clk);
  output [11:0]video_out_TDATA;
  input [0:0]Q;
  input [11:0]D;
  input ap_clk;

  wire [11:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire [11:0]video_out_TDATA;

  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[0]),
        .Q(video_out_TDATA[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[10]),
        .Q(video_out_TDATA[10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[11]),
        .Q(video_out_TDATA[11]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[1]),
        .Q(video_out_TDATA[1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[2]),
        .Q(video_out_TDATA[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[3]),
        .Q(video_out_TDATA[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[4]),
        .Q(video_out_TDATA[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[5]),
        .Q(video_out_TDATA[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[6]),
        .Q(video_out_TDATA[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[7]),
        .Q(video_out_TDATA[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[8]),
        .Q(video_out_TDATA[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(Q),
        .D(D[9]),
        .Q(video_out_TDATA[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud
   (E,
    x_reg_1170,
    p,
    D,
    ap_clk,
    Q,
    PCOUT,
    \y_reg_105_reg[8] ,
    \ap_CS_fsm_reg[3] ,
    video_out_TREADY);
  output [0:0]E;
  output x_reg_1170;
  output p;
  output [11:0]D;
  input ap_clk;
  input [7:0]Q;
  input [47:0]PCOUT;
  input [8:0]\y_reg_105_reg[8] ;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input video_out_TREADY;

  wire [11:0]D;
  wire [0:0]E;
  wire [47:0]PCOUT;
  wire [7:0]Q;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire p;
  wire video_out_TREADY;
  wire x_reg_1170;
  wire [8:0]\y_reg_105_reg[8] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud_DSP48_0 mandelbrot_frame_cud_DSP48_0_U
       (.D(D),
        .E(E),
        .PCOUT(PCOUT),
        .Q(Q),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .p_0(p),
        .video_out_TREADY(video_out_TREADY),
        .x_reg_1170(x_reg_1170),
        .\y_reg_105_reg[8] (\y_reg_105_reg[8] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud_DSP48_0
   (E,
    x_reg_1170,
    p_0,
    D,
    ap_clk,
    Q,
    PCOUT,
    \y_reg_105_reg[8] ,
    \ap_CS_fsm_reg[3] ,
    video_out_TREADY);
  output [0:0]E;
  output x_reg_1170;
  output p_0;
  output [11:0]D;
  input ap_clk;
  input [7:0]Q;
  input [47:0]PCOUT;
  input [8:0]\y_reg_105_reg[8] ;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input video_out_TREADY;

  wire [11:0]D;
  wire [0:0]E;
  wire [47:0]PCOUT;
  wire [7:0]Q;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire p_0;
  wire \q0[10]_i_2_n_0 ;
  wire \q0[10]_i_3_n_0 ;
  wire \q0[11]_i_2_n_0 ;
  wire \q0[11]_i_3_n_0 ;
  wire \q0[1]_i_2_n_0 ;
  wire \q0[2]_i_2_n_0 ;
  wire \q0[3]_i_2_n_0 ;
  wire \q0[3]_i_3_n_0 ;
  wire \q0[4]_i_4_n_0 ;
  wire \q0[4]_i_5_n_0 ;
  wire \q0[4]_i_6_n_0 ;
  wire \q0[4]_i_7_n_0 ;
  wire \q0[5]_i_2_n_0 ;
  wire \q0[5]_i_3_n_0 ;
  wire \q0[6]_i_2_n_0 ;
  wire \q0[6]_i_3_n_0 ;
  wire \q0[7]_i_2_n_0 ;
  wire \q0[7]_i_3_n_0 ;
  wire \q0[8]_i_2_n_0 ;
  wire \q0[8]_i_3_n_0 ;
  wire \q0[9]_i_2_n_0 ;
  wire \q0[9]_i_3_n_0 ;
  wire \q0_reg[4]_i_2_n_0 ;
  wire \q0_reg[4]_i_3_n_0 ;
  wire [7:0]tmp_7_fu_204_p1;
  wire video_out_TREADY;
  wire x_reg_1170;
  wire [8:0]\y_reg_105_reg[8] ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:8]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ap_ready_INST_0_i_1
       (.I0(\y_reg_105_reg[8] [0]),
        .I1(\y_reg_105_reg[8] [3]),
        .I2(\y_reg_105_reg[8] [4]),
        .I3(\y_reg_105_reg[8] [2]),
        .I4(\y_reg_105_reg[8] [1]),
        .O(p_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(E),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:8],tmp_7_fu_204_p1}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN(PCOUT),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(x_reg_1170),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(x_reg_1170),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h4150054182A00A82)) 
    \q0[0]_i_1 
       (.I0(tmp_7_fu_204_p1[4]),
        .I1(tmp_7_fu_204_p1[7]),
        .I2(tmp_7_fu_204_p1[1]),
        .I3(tmp_7_fu_204_p1[0]),
        .I4(tmp_7_fu_204_p1[6]),
        .I5(tmp_7_fu_204_p1[5]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[10]_i_1 
       (.I0(\q0[10]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(\q0[10]_i_3_n_0 ),
        .I3(tmp_7_fu_204_p1[5]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h030303300F3C3C78)) 
    \q0[10]_i_2 
       (.I0(tmp_7_fu_204_p1[0]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[3]),
        .I3(tmp_7_fu_204_p1[2]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h366C2888666C2888)) 
    \q0[10]_i_3 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[3]),
        .I2(tmp_7_fu_204_p1[2]),
        .I3(tmp_7_fu_204_p1[1]),
        .I4(tmp_7_fu_204_p1[7]),
        .I5(tmp_7_fu_204_p1[0]),
        .O(\q0[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[11]_i_1 
       (.I0(\q0[11]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(\q0[11]_i_3_n_0 ),
        .I3(tmp_7_fu_204_p1[5]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hB3333330FCCCCCC8)) 
    \q0[11]_i_2 
       (.I0(tmp_7_fu_204_p1[0]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[3]),
        .I3(tmp_7_fu_204_p1[2]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h155557572A2AAAAA)) 
    \q0[11]_i_3 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[1]),
        .I2(tmp_7_fu_204_p1[2]),
        .I3(tmp_7_fu_204_p1[0]),
        .I4(tmp_7_fu_204_p1[3]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \q0[1]_i_1 
       (.I0(tmp_7_fu_204_p1[4]),
        .I1(\q0[1]_i_2_n_0 ),
        .I2(tmp_7_fu_204_p1[5]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h1E0FF078)) 
    \q0[1]_i_2 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[0]),
        .I2(tmp_7_fu_204_p1[2]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[1]),
        .O(\q0[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \q0[2]_i_1 
       (.I0(tmp_7_fu_204_p1[4]),
        .I1(\q0[2]_i_2_n_0 ),
        .I2(tmp_7_fu_204_p1[5]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h363366666666CC6C)) 
    \q0[2]_i_2 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[3]),
        .I2(tmp_7_fu_204_p1[0]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[2]),
        .O(\q0[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3088)) 
    \q0[3]_i_1 
       (.I0(\q0[3]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(\q0[3]_i_3_n_0 ),
        .I3(tmp_7_fu_204_p1[5]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hEAEAAAEAA8AAA8A8)) 
    \q0[3]_i_2 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[2]),
        .I2(tmp_7_fu_204_p1[1]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[0]),
        .I5(tmp_7_fu_204_p1[3]),
        .O(\q0[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1155515555755577)) 
    \q0[3]_i_3 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[2]),
        .I2(tmp_7_fu_204_p1[7]),
        .I3(tmp_7_fu_204_p1[1]),
        .I4(tmp_7_fu_204_p1[0]),
        .I5(tmp_7_fu_204_p1[3]),
        .O(\q0[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8847)) 
    \q0[4]_i_4 
       (.I0(tmp_7_fu_204_p1[0]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[7]),
        .I3(tmp_7_fu_204_p1[1]),
        .O(\q0[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A000000)) 
    \q0[4]_i_5 
       (.I0(tmp_7_fu_204_p1[3]),
        .I1(tmp_7_fu_204_p1[0]),
        .I2(tmp_7_fu_204_p1[7]),
        .I3(tmp_7_fu_204_p1[1]),
        .I4(tmp_7_fu_204_p1[2]),
        .I5(tmp_7_fu_204_p1[6]),
        .O(\q0[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000004500000000)) 
    \q0[4]_i_6 
       (.I0(tmp_7_fu_204_p1[3]),
        .I1(tmp_7_fu_204_p1[7]),
        .I2(tmp_7_fu_204_p1[0]),
        .I3(tmp_7_fu_204_p1[1]),
        .I4(tmp_7_fu_204_p1[2]),
        .I5(tmp_7_fu_204_p1[6]),
        .O(\q0[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h70FF7000000000FF)) 
    \q0[4]_i_7 
       (.I0(tmp_7_fu_204_p1[2]),
        .I1(tmp_7_fu_204_p1[3]),
        .I2(tmp_7_fu_204_p1[7]),
        .I3(tmp_7_fu_204_p1[6]),
        .I4(tmp_7_fu_204_p1[0]),
        .I5(tmp_7_fu_204_p1[1]),
        .O(\q0[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000001E147814)) 
    \q0[5]_i_2 
       (.I0(tmp_7_fu_204_p1[7]),
        .I1(tmp_7_fu_204_p1[1]),
        .I2(tmp_7_fu_204_p1[2]),
        .I3(tmp_7_fu_204_p1[6]),
        .I4(tmp_7_fu_204_p1[0]),
        .I5(tmp_7_fu_204_p1[5]),
        .O(\q0[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h48481E7800000000)) 
    \q0[5]_i_3 
       (.I0(tmp_7_fu_204_p1[1]),
        .I1(tmp_7_fu_204_p1[7]),
        .I2(tmp_7_fu_204_p1[2]),
        .I3(tmp_7_fu_204_p1[0]),
        .I4(tmp_7_fu_204_p1[6]),
        .I5(tmp_7_fu_204_p1[5]),
        .O(\q0[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[6]_i_1 
       (.I0(\q0[6]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(\q0[6]_i_3_n_0 ),
        .I3(tmp_7_fu_204_p1[5]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h331136116614CC44)) 
    \q0[6]_i_2 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[3]),
        .I2(tmp_7_fu_204_p1[0]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[2]),
        .O(\q0[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0F483CC078C0F0)) 
    \q0[6]_i_3 
       (.I0(tmp_7_fu_204_p1[0]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[3]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[2]),
        .O(\q0[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[7]_i_1 
       (.I0(\q0[7]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(\q0[7]_i_3_n_0 ),
        .I3(tmp_7_fu_204_p1[5]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h6E6AA8A855555444)) 
    \q0[7]_i_2 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[3]),
        .I2(tmp_7_fu_204_p1[1]),
        .I3(tmp_7_fu_204_p1[0]),
        .I4(tmp_7_fu_204_p1[2]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h04CCCCCC0333337F)) 
    \q0[7]_i_3 
       (.I0(tmp_7_fu_204_p1[0]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[1]),
        .I3(tmp_7_fu_204_p1[2]),
        .I4(tmp_7_fu_204_p1[3]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB88BF33FB88BC00C)) 
    \q0[8]_i_1 
       (.I0(\q0[8]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(tmp_7_fu_204_p1[6]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[5]),
        .I5(\q0[8]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h550A550B00F522E4)) 
    \q0[8]_i_2 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[3]),
        .I2(tmp_7_fu_204_p1[0]),
        .I3(tmp_7_fu_204_p1[7]),
        .I4(tmp_7_fu_204_p1[2]),
        .I5(tmp_7_fu_204_p1[1]),
        .O(\q0[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A7FD5004040AAAA)) 
    \q0[8]_i_3 
       (.I0(tmp_7_fu_204_p1[6]),
        .I1(tmp_7_fu_204_p1[2]),
        .I2(tmp_7_fu_204_p1[3]),
        .I3(tmp_7_fu_204_p1[0]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[9]_i_1 
       (.I0(\q0[9]_i_2_n_0 ),
        .I1(tmp_7_fu_204_p1[4]),
        .I2(\q0[9]_i_3_n_0 ),
        .I3(tmp_7_fu_204_p1[5]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0033330000FF778B)) 
    \q0[9]_i_2 
       (.I0(tmp_7_fu_204_p1[0]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[3]),
        .I3(tmp_7_fu_204_p1[2]),
        .I4(tmp_7_fu_204_p1[1]),
        .I5(tmp_7_fu_204_p1[7]),
        .O(\q0[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FBF0C0CF0C0C0C0)) 
    \q0[9]_i_3 
       (.I0(tmp_7_fu_204_p1[3]),
        .I1(tmp_7_fu_204_p1[6]),
        .I2(tmp_7_fu_204_p1[1]),
        .I3(tmp_7_fu_204_p1[0]),
        .I4(tmp_7_fu_204_p1[7]),
        .I5(tmp_7_fu_204_p1[2]),
        .O(\q0[9]_i_3_n_0 ));
  MUXF8 \q0_reg[4]_i_1 
       (.I0(\q0_reg[4]_i_2_n_0 ),
        .I1(\q0_reg[4]_i_3_n_0 ),
        .O(D[4]),
        .S(tmp_7_fu_204_p1[4]));
  MUXF7 \q0_reg[4]_i_2 
       (.I0(\q0[4]_i_4_n_0 ),
        .I1(\q0[4]_i_5_n_0 ),
        .O(\q0_reg[4]_i_2_n_0 ),
        .S(tmp_7_fu_204_p1[5]));
  MUXF7 \q0_reg[4]_i_3 
       (.I0(\q0[4]_i_6_n_0 ),
        .I1(\q0[4]_i_7_n_0 ),
        .O(\q0_reg[4]_i_3_n_0 ),
        .S(tmp_7_fu_204_p1[5]));
  MUXF7 \q0_reg[5]_i_1 
       (.I0(\q0[5]_i_2_n_0 ),
        .I1(\q0[5]_i_3_n_0 ),
        .O(D[5]),
        .S(tmp_7_fu_204_p1[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    tmp_s_reg_229_reg_i_1
       (.I0(p_0),
        .I1(\y_reg_105_reg[8] [7]),
        .I2(\y_reg_105_reg[8] [5]),
        .I3(\y_reg_105_reg[8] [6]),
        .I4(\y_reg_105_reg[8] [8]),
        .I5(\ap_CS_fsm_reg[3] [0]),
        .O(x_reg_1170));
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg_117[9]_i_1 
       (.I0(video_out_TREADY),
        .I1(\ap_CS_fsm_reg[3] [1]),
        .O(E));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
