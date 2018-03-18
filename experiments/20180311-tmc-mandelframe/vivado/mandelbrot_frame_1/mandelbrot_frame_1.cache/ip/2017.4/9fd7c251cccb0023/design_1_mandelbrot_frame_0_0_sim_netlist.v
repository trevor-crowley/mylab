// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Mar 11 22:31:02 2018
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

  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
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

(* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state2 = "3'b010" *) (* ap_ST_fsm_state3 = "3'b100" *) 
(* hls_module = "yes" *) 
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
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm[2]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_reg_ioackin_video_out_TREADY;
  wire ap_reg_ioackin_video_out_TREADY_i_1_n_0;
  wire ap_rst_n;
  wire ap_start;
  wire mandelbrot_frame_cud_U2_n_11;
  wire mandelbrot_frame_cud_U2_n_12;
  wire mandelbrot_frame_cud_U2_n_13;
  wire mandelbrot_frame_cud_U2_n_14;
  wire tmp_1_cast_reg_910_reg_n_106;
  wire tmp_1_cast_reg_910_reg_n_107;
  wire tmp_1_cast_reg_910_reg_n_108;
  wire tmp_1_cast_reg_910_reg_n_109;
  wire tmp_1_cast_reg_910_reg_n_110;
  wire tmp_1_cast_reg_910_reg_n_111;
  wire tmp_1_cast_reg_910_reg_n_112;
  wire tmp_1_cast_reg_910_reg_n_113;
  wire tmp_1_cast_reg_910_reg_n_114;
  wire tmp_1_cast_reg_910_reg_n_115;
  wire tmp_1_cast_reg_910_reg_n_116;
  wire tmp_1_cast_reg_910_reg_n_117;
  wire tmp_1_cast_reg_910_reg_n_118;
  wire tmp_1_cast_reg_910_reg_n_119;
  wire tmp_1_cast_reg_910_reg_n_120;
  wire tmp_1_cast_reg_910_reg_n_121;
  wire tmp_1_cast_reg_910_reg_n_122;
  wire tmp_1_cast_reg_910_reg_n_123;
  wire tmp_1_cast_reg_910_reg_n_124;
  wire tmp_1_cast_reg_910_reg_n_125;
  wire tmp_1_cast_reg_910_reg_n_126;
  wire tmp_1_cast_reg_910_reg_n_127;
  wire tmp_1_cast_reg_910_reg_n_128;
  wire tmp_1_cast_reg_910_reg_n_129;
  wire tmp_1_cast_reg_910_reg_n_130;
  wire tmp_1_cast_reg_910_reg_n_131;
  wire tmp_1_cast_reg_910_reg_n_132;
  wire tmp_1_cast_reg_910_reg_n_133;
  wire tmp_1_cast_reg_910_reg_n_134;
  wire tmp_1_cast_reg_910_reg_n_135;
  wire tmp_1_cast_reg_910_reg_n_136;
  wire tmp_1_cast_reg_910_reg_n_137;
  wire tmp_1_cast_reg_910_reg_n_138;
  wire tmp_1_cast_reg_910_reg_n_139;
  wire tmp_1_cast_reg_910_reg_n_140;
  wire tmp_1_cast_reg_910_reg_n_141;
  wire tmp_1_cast_reg_910_reg_n_142;
  wire tmp_1_cast_reg_910_reg_n_143;
  wire tmp_1_cast_reg_910_reg_n_144;
  wire tmp_1_cast_reg_910_reg_n_145;
  wire tmp_1_cast_reg_910_reg_n_146;
  wire tmp_1_cast_reg_910_reg_n_147;
  wire tmp_1_cast_reg_910_reg_n_148;
  wire tmp_1_cast_reg_910_reg_n_149;
  wire tmp_1_cast_reg_910_reg_n_150;
  wire tmp_1_cast_reg_910_reg_n_151;
  wire tmp_1_cast_reg_910_reg_n_152;
  wire tmp_1_cast_reg_910_reg_n_153;
  wire [11:0]\^video_out_TDATA ;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TUSER;
  wire \video_out_TUSER[0]_INST_0_i_2_n_0 ;
  wire video_out_TVALID;
  wire [8:0]x_1_fu_316_p2;
  wire [9:9]x_1_fu_316_p2__0;
  wire x_reg_2690;
  wire x_reg_26904_out;
  wire [9:0]x_reg_269_reg__0;
  wire [8:0]y_1_fu_290_p2;
  wire [8:0]y_1_reg_905;
  wire \y_1_reg_905[8]_i_2_n_0 ;
  wire y_reg_257;
  wire \y_reg_257_reg_n_0_[0] ;
  wire \y_reg_257_reg_n_0_[1] ;
  wire \y_reg_257_reg_n_0_[2] ;
  wire \y_reg_257_reg_n_0_[3] ;
  wire \y_reg_257_reg_n_0_[4] ;
  wire \y_reg_257_reg_n_0_[5] ;
  wire \y_reg_257_reg_n_0_[6] ;
  wire \y_reg_257_reg_n_0_[7] ;
  wire \y_reg_257_reg_n_0_[8] ;
  wire NLW_tmp_1_cast_reg_910_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_1_cast_reg_910_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_1_cast_reg_910_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_1_cast_reg_910_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_1_cast_reg_910_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_1_cast_reg_910_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_1_cast_reg_910_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_1_cast_reg_910_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_1_cast_reg_910_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_1_cast_reg_910_reg_P_UNCONNECTED;

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
  LUT5 #(
    .INIT(32'hDDD0FFFF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(ap_CS_fsm_state2),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h45400000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_NS_fsm1),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10110000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_done),
        .I2(ap_CS_fsm_state2),
        .I3(ap_NS_fsm1),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[2]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_0 ),
        .Q(ap_CS_fsm_state3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(\y_reg_257_reg_n_0_[7] ),
        .I2(\y_reg_257_reg_n_0_[6] ),
        .I3(\y_reg_257_reg_n_0_[5] ),
        .I4(\y_reg_257_reg_n_0_[8] ),
        .I5(mandelbrot_frame_cud_U2_n_13),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_reg_ioackin_video_out_TREADY_i_1
       (.I0(ap_rst_n),
        .I1(ap_reg_ioackin_video_out_TREADY),
        .I2(mandelbrot_frame_cud_U2_n_11),
        .O(ap_reg_ioackin_video_out_TREADY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_video_out_TREADY_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_video_out_TREADY_i_1_n_0),
        .Q(ap_reg_ioackin_video_out_TREADY),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud mandelbrot_frame_cud_U2
       (.D(x_1_fu_316_p2),
        .E(x_reg_26904_out),
        .PCOUT({tmp_1_cast_reg_910_reg_n_106,tmp_1_cast_reg_910_reg_n_107,tmp_1_cast_reg_910_reg_n_108,tmp_1_cast_reg_910_reg_n_109,tmp_1_cast_reg_910_reg_n_110,tmp_1_cast_reg_910_reg_n_111,tmp_1_cast_reg_910_reg_n_112,tmp_1_cast_reg_910_reg_n_113,tmp_1_cast_reg_910_reg_n_114,tmp_1_cast_reg_910_reg_n_115,tmp_1_cast_reg_910_reg_n_116,tmp_1_cast_reg_910_reg_n_117,tmp_1_cast_reg_910_reg_n_118,tmp_1_cast_reg_910_reg_n_119,tmp_1_cast_reg_910_reg_n_120,tmp_1_cast_reg_910_reg_n_121,tmp_1_cast_reg_910_reg_n_122,tmp_1_cast_reg_910_reg_n_123,tmp_1_cast_reg_910_reg_n_124,tmp_1_cast_reg_910_reg_n_125,tmp_1_cast_reg_910_reg_n_126,tmp_1_cast_reg_910_reg_n_127,tmp_1_cast_reg_910_reg_n_128,tmp_1_cast_reg_910_reg_n_129,tmp_1_cast_reg_910_reg_n_130,tmp_1_cast_reg_910_reg_n_131,tmp_1_cast_reg_910_reg_n_132,tmp_1_cast_reg_910_reg_n_133,tmp_1_cast_reg_910_reg_n_134,tmp_1_cast_reg_910_reg_n_135,tmp_1_cast_reg_910_reg_n_136,tmp_1_cast_reg_910_reg_n_137,tmp_1_cast_reg_910_reg_n_138,tmp_1_cast_reg_910_reg_n_139,tmp_1_cast_reg_910_reg_n_140,tmp_1_cast_reg_910_reg_n_141,tmp_1_cast_reg_910_reg_n_142,tmp_1_cast_reg_910_reg_n_143,tmp_1_cast_reg_910_reg_n_144,tmp_1_cast_reg_910_reg_n_145,tmp_1_cast_reg_910_reg_n_146,tmp_1_cast_reg_910_reg_n_147,tmp_1_cast_reg_910_reg_n_148,tmp_1_cast_reg_910_reg_n_149,tmp_1_cast_reg_910_reg_n_150,tmp_1_cast_reg_910_reg_n_151,tmp_1_cast_reg_910_reg_n_152,tmp_1_cast_reg_910_reg_n_153}),
        .Q(x_reg_269_reg__0),
        .SR(x_reg_2690),
        .ap_CS_fsm_state2(ap_CS_fsm_state2),
        .ap_CS_fsm_state3(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_reg_ioackin_video_out_TREADY(ap_reg_ioackin_video_out_TREADY),
        .p(mandelbrot_frame_cud_U2_n_11),
        .p_0(mandelbrot_frame_cud_U2_n_13),
        .p_1(mandelbrot_frame_cud_U2_n_14),
        .tmp_1_cast_reg_910_reg(mandelbrot_frame_cud_U2_n_12),
        .video_out_TDATA(\^video_out_TDATA ),
        .video_out_TREADY(video_out_TREADY),
        .\y_reg_257_reg[8] ({\y_reg_257_reg_n_0_[8] ,\y_reg_257_reg_n_0_[7] ,\y_reg_257_reg_n_0_[6] ,\y_reg_257_reg_n_0_[5] ,\y_reg_257_reg_n_0_[4] ,\y_reg_257_reg_n_0_[3] ,\y_reg_257_reg_n_0_[2] ,\y_reg_257_reg_n_0_[1] ,\y_reg_257_reg_n_0_[0] }));
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
    tmp_1_cast_reg_910_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_1_reg_905}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_1_cast_reg_910_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_1_reg_905}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_1_cast_reg_910_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_1_cast_reg_910_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_1_cast_reg_910_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_NS_fsm1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_NS_fsm1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(x_reg_2690),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_1_cast_reg_910_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_1_cast_reg_910_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_tmp_1_cast_reg_910_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_tmp_1_cast_reg_910_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_1_cast_reg_910_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmp_1_cast_reg_910_reg_n_106,tmp_1_cast_reg_910_reg_n_107,tmp_1_cast_reg_910_reg_n_108,tmp_1_cast_reg_910_reg_n_109,tmp_1_cast_reg_910_reg_n_110,tmp_1_cast_reg_910_reg_n_111,tmp_1_cast_reg_910_reg_n_112,tmp_1_cast_reg_910_reg_n_113,tmp_1_cast_reg_910_reg_n_114,tmp_1_cast_reg_910_reg_n_115,tmp_1_cast_reg_910_reg_n_116,tmp_1_cast_reg_910_reg_n_117,tmp_1_cast_reg_910_reg_n_118,tmp_1_cast_reg_910_reg_n_119,tmp_1_cast_reg_910_reg_n_120,tmp_1_cast_reg_910_reg_n_121,tmp_1_cast_reg_910_reg_n_122,tmp_1_cast_reg_910_reg_n_123,tmp_1_cast_reg_910_reg_n_124,tmp_1_cast_reg_910_reg_n_125,tmp_1_cast_reg_910_reg_n_126,tmp_1_cast_reg_910_reg_n_127,tmp_1_cast_reg_910_reg_n_128,tmp_1_cast_reg_910_reg_n_129,tmp_1_cast_reg_910_reg_n_130,tmp_1_cast_reg_910_reg_n_131,tmp_1_cast_reg_910_reg_n_132,tmp_1_cast_reg_910_reg_n_133,tmp_1_cast_reg_910_reg_n_134,tmp_1_cast_reg_910_reg_n_135,tmp_1_cast_reg_910_reg_n_136,tmp_1_cast_reg_910_reg_n_137,tmp_1_cast_reg_910_reg_n_138,tmp_1_cast_reg_910_reg_n_139,tmp_1_cast_reg_910_reg_n_140,tmp_1_cast_reg_910_reg_n_141,tmp_1_cast_reg_910_reg_n_142,tmp_1_cast_reg_910_reg_n_143,tmp_1_cast_reg_910_reg_n_144,tmp_1_cast_reg_910_reg_n_145,tmp_1_cast_reg_910_reg_n_146,tmp_1_cast_reg_910_reg_n_147,tmp_1_cast_reg_910_reg_n_148,tmp_1_cast_reg_910_reg_n_149,tmp_1_cast_reg_910_reg_n_150,tmp_1_cast_reg_910_reg_n_151,tmp_1_cast_reg_910_reg_n_152,tmp_1_cast_reg_910_reg_n_153}),
        .RSTA(y_reg_257),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(y_reg_257),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_1_cast_reg_910_reg_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \video_out_TLAST[0]_INST_0 
       (.I0(x_reg_269_reg__0[7]),
        .I1(x_reg_269_reg__0[6]),
        .I2(mandelbrot_frame_cud_U2_n_14),
        .I3(x_reg_269_reg__0[5]),
        .I4(x_reg_269_reg__0[9]),
        .I5(x_reg_269_reg__0[8]),
        .O(video_out_TLAST));
  LUT5 #(
    .INIT(32'h00000010)) 
    \video_out_TUSER[0]_INST_0 
       (.I0(\y_reg_257_reg_n_0_[6] ),
        .I1(\y_reg_257_reg_n_0_[5] ),
        .I2(mandelbrot_frame_cud_U2_n_12),
        .I3(\video_out_TUSER[0]_INST_0_i_2_n_0 ),
        .I4(mandelbrot_frame_cud_U2_n_13),
        .O(video_out_TUSER));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \video_out_TUSER[0]_INST_0_i_2 
       (.I0(x_reg_269_reg__0[7]),
        .I1(\y_reg_257_reg_n_0_[8] ),
        .I2(x_reg_269_reg__0[6]),
        .I3(\y_reg_257_reg_n_0_[7] ),
        .I4(x_reg_269_reg__0[8]),
        .I5(x_reg_269_reg__0[9]),
        .O(\video_out_TUSER[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    video_out_TVALID_INST_0
       (.I0(ap_reg_ioackin_video_out_TREADY),
        .I1(mandelbrot_frame_cud_U2_n_11),
        .O(video_out_TVALID));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x_reg_269[9]_i_1 
       (.I0(x_reg_269_reg__0[9]),
        .I1(x_reg_269_reg__0[7]),
        .I2(x_reg_269_reg__0[5]),
        .I3(mandelbrot_frame_cud_U2_n_14),
        .I4(x_reg_269_reg__0[6]),
        .I5(x_reg_269_reg__0[8]),
        .O(x_1_fu_316_p2__0));
  FDRE \x_reg_269_reg[0] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[0]),
        .Q(x_reg_269_reg__0[0]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[1] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[1]),
        .Q(x_reg_269_reg__0[1]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[2] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[2]),
        .Q(x_reg_269_reg__0[2]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[3] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[3]),
        .Q(x_reg_269_reg__0[3]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[4] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[4]),
        .Q(x_reg_269_reg__0[4]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[5] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[5]),
        .Q(x_reg_269_reg__0[5]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[6] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[6]),
        .Q(x_reg_269_reg__0[6]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[7] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[7]),
        .Q(x_reg_269_reg__0[7]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[8] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2[8]),
        .Q(x_reg_269_reg__0[8]),
        .R(x_reg_2690));
  FDRE \x_reg_269_reg[9] 
       (.C(ap_clk),
        .CE(x_reg_26904_out),
        .D(x_1_fu_316_p2__0),
        .Q(x_reg_269_reg__0[9]),
        .R(x_reg_2690));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \y_1_reg_905[0]_i_1 
       (.I0(\y_reg_257_reg_n_0_[0] ),
        .O(y_1_fu_290_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_1_reg_905[1]_i_1 
       (.I0(\y_reg_257_reg_n_0_[1] ),
        .I1(\y_reg_257_reg_n_0_[0] ),
        .O(y_1_fu_290_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \y_1_reg_905[2]_i_1 
       (.I0(\y_reg_257_reg_n_0_[2] ),
        .I1(\y_reg_257_reg_n_0_[1] ),
        .I2(\y_reg_257_reg_n_0_[0] ),
        .O(y_1_fu_290_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_1_reg_905[3]_i_1 
       (.I0(\y_reg_257_reg_n_0_[3] ),
        .I1(\y_reg_257_reg_n_0_[0] ),
        .I2(\y_reg_257_reg_n_0_[1] ),
        .I3(\y_reg_257_reg_n_0_[2] ),
        .O(y_1_fu_290_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_1_reg_905[4]_i_1 
       (.I0(\y_reg_257_reg_n_0_[2] ),
        .I1(\y_reg_257_reg_n_0_[1] ),
        .I2(\y_reg_257_reg_n_0_[0] ),
        .I3(\y_reg_257_reg_n_0_[3] ),
        .I4(\y_reg_257_reg_n_0_[4] ),
        .O(y_1_fu_290_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \y_1_reg_905[5]_i_1 
       (.I0(\y_reg_257_reg_n_0_[5] ),
        .I1(\y_reg_257_reg_n_0_[2] ),
        .I2(\y_reg_257_reg_n_0_[1] ),
        .I3(\y_reg_257_reg_n_0_[0] ),
        .I4(\y_reg_257_reg_n_0_[3] ),
        .I5(\y_reg_257_reg_n_0_[4] ),
        .O(y_1_fu_290_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \y_1_reg_905[6]_i_1 
       (.I0(\y_reg_257_reg_n_0_[6] ),
        .I1(\y_1_reg_905[8]_i_2_n_0 ),
        .I2(\y_reg_257_reg_n_0_[5] ),
        .O(y_1_fu_290_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_1_reg_905[7]_i_1 
       (.I0(\y_reg_257_reg_n_0_[7] ),
        .I1(\y_reg_257_reg_n_0_[6] ),
        .I2(\y_reg_257_reg_n_0_[5] ),
        .I3(\y_1_reg_905[8]_i_2_n_0 ),
        .O(y_1_fu_290_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \y_1_reg_905[8]_i_1 
       (.I0(\y_reg_257_reg_n_0_[8] ),
        .I1(\y_reg_257_reg_n_0_[5] ),
        .I2(\y_reg_257_reg_n_0_[6] ),
        .I3(\y_reg_257_reg_n_0_[7] ),
        .I4(\y_1_reg_905[8]_i_2_n_0 ),
        .O(y_1_fu_290_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \y_1_reg_905[8]_i_2 
       (.I0(\y_reg_257_reg_n_0_[4] ),
        .I1(\y_reg_257_reg_n_0_[3] ),
        .I2(\y_reg_257_reg_n_0_[0] ),
        .I3(\y_reg_257_reg_n_0_[1] ),
        .I4(\y_reg_257_reg_n_0_[2] ),
        .O(\y_1_reg_905[8]_i_2_n_0 ));
  FDRE \y_1_reg_905_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[0]),
        .Q(y_1_reg_905[0]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[1]),
        .Q(y_1_reg_905[1]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[2]),
        .Q(y_1_reg_905[2]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[3]),
        .Q(y_1_reg_905[3]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[4]),
        .Q(y_1_reg_905[4]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[5]),
        .Q(y_1_reg_905[5]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[6]),
        .Q(y_1_reg_905[6]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[7]),
        .Q(y_1_reg_905[7]),
        .R(1'b0));
  FDRE \y_1_reg_905_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_290_p2[8]),
        .Q(y_1_reg_905[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \y_reg_257[8]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_NS_fsm1),
        .O(y_reg_257));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \y_reg_257[8]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(mandelbrot_frame_cud_U2_n_12),
        .I2(x_reg_269_reg__0[9]),
        .I3(x_reg_269_reg__0[8]),
        .I4(x_reg_269_reg__0[7]),
        .I5(x_reg_269_reg__0[6]),
        .O(ap_NS_fsm1));
  FDRE \y_reg_257_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[0]),
        .Q(\y_reg_257_reg_n_0_[0] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[1]),
        .Q(\y_reg_257_reg_n_0_[1] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[2]),
        .Q(\y_reg_257_reg_n_0_[2] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[3]),
        .Q(\y_reg_257_reg_n_0_[3] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[4]),
        .Q(\y_reg_257_reg_n_0_[4] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[5]),
        .Q(\y_reg_257_reg_n_0_[5] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[6]),
        .Q(\y_reg_257_reg_n_0_[6] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[7]),
        .Q(\y_reg_257_reg_n_0_[7] ),
        .R(y_reg_257));
  FDRE \y_reg_257_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_905[8]),
        .Q(\y_reg_257_reg_n_0_[8] ),
        .R(y_reg_257));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud
   (E,
    SR,
    D,
    p,
    tmp_1_cast_reg_910_reg,
    p_0,
    p_1,
    video_out_TDATA,
    ap_clk,
    PCOUT,
    ap_reg_ioackin_video_out_TREADY,
    video_out_TREADY,
    ap_CS_fsm_state3,
    Q,
    ap_CS_fsm_state2,
    \y_reg_257_reg[8] );
  output [0:0]E;
  output [0:0]SR;
  output [8:0]D;
  output p;
  output tmp_1_cast_reg_910_reg;
  output p_0;
  output p_1;
  output [11:0]video_out_TDATA;
  input ap_clk;
  input [47:0]PCOUT;
  input ap_reg_ioackin_video_out_TREADY;
  input video_out_TREADY;
  input ap_CS_fsm_state3;
  input [9:0]Q;
  input ap_CS_fsm_state2;
  input [8:0]\y_reg_257_reg[8] ;

  wire [8:0]D;
  wire [0:0]E;
  wire [47:0]PCOUT;
  wire [9:0]Q;
  wire [0:0]SR;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_clk;
  wire ap_reg_ioackin_video_out_TREADY;
  wire p;
  wire p_0;
  wire p_1;
  wire tmp_1_cast_reg_910_reg;
  wire [11:0]video_out_TDATA;
  wire video_out_TREADY;
  wire [8:0]\y_reg_257_reg[8] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud_DSP48_0 mandelbrot_frame_cud_DSP48_0_U
       (.D(D),
        .E(E),
        .PCOUT(PCOUT),
        .Q(Q),
        .SR(SR),
        .ap_CS_fsm_state2(ap_CS_fsm_state2),
        .ap_CS_fsm_state3(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_reg_ioackin_video_out_TREADY(ap_reg_ioackin_video_out_TREADY),
        .p_0(p),
        .p_1(p_0),
        .p_2(p_1),
        .tmp_1_cast_reg_910_reg(tmp_1_cast_reg_910_reg),
        .video_out_TDATA(video_out_TDATA),
        .video_out_TREADY(video_out_TREADY),
        .\y_reg_257_reg[8] (\y_reg_257_reg[8] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_cud_DSP48_0
   (E,
    SR,
    D,
    p_0,
    tmp_1_cast_reg_910_reg,
    p_1,
    p_2,
    video_out_TDATA,
    ap_clk,
    PCOUT,
    ap_reg_ioackin_video_out_TREADY,
    video_out_TREADY,
    ap_CS_fsm_state3,
    Q,
    ap_CS_fsm_state2,
    \y_reg_257_reg[8] );
  output [0:0]E;
  output [0:0]SR;
  output [8:0]D;
  output p_0;
  output tmp_1_cast_reg_910_reg;
  output p_1;
  output p_2;
  output [11:0]video_out_TDATA;
  input ap_clk;
  input [47:0]PCOUT;
  input ap_reg_ioackin_video_out_TREADY;
  input video_out_TREADY;
  input ap_CS_fsm_state3;
  input [9:0]Q;
  input ap_CS_fsm_state2;
  input [8:0]\y_reg_257_reg[8] ;

  wire [8:0]D;
  wire [0:0]E;
  wire [47:0]PCOUT;
  wire [9:0]Q;
  wire [0:0]SR;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_clk;
  wire ap_reg_ioackin_video_out_TREADY;
  wire [8:1]grp_fu_894_p3;
  wire [11:2]\mandelbrot_frame_bkb_U1/mux_6_1__2 ;
  wire [8:2]\mandelbrot_frame_bkb_U1/mux_6_3__1 ;
  wire [11:1]\mandelbrot_frame_bkb_U1/mux_7_1__4 ;
  wire [11:2]mux_6_0;
  wire [11:2]mux_6_2;
  wire [11:1]mux_7_0;
  wire p_0;
  wire p_1;
  wire p_2;
  wire p_n_105;
  wire tmp_1_cast_reg_910_reg;
  wire [11:0]video_out_TDATA;
  wire \video_out_TDATA[10]_INST_0_i_6_n_0 ;
  wire \video_out_TDATA[11]_INST_0_i_6_n_0 ;
  wire \video_out_TDATA[4]_INST_0_i_4_n_0 ;
  wire \video_out_TDATA[6]_INST_0_i_4_n_0 ;
  wire \video_out_TDATA[7]_INST_0_i_4_n_0 ;
  wire \video_out_TDATA[9]_INST_0_i_6_n_0 ;
  wire video_out_TREADY;
  wire [8:0]\y_reg_257_reg[8] ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:9]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ap_ready_INST_0_i_1
       (.I0(\y_reg_257_reg[8] [0]),
        .I1(\y_reg_257_reg[8] [1]),
        .I2(\y_reg_257_reg[8] [4]),
        .I3(\y_reg_257_reg[8] [3]),
        .I4(\y_reg_257_reg[8] [2]),
        .O(p_1));
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
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
        .P({NLW_p_P_UNCONNECTED[47:9],grp_fu_894_p3,p_n_105}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN(PCOUT),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(SR),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h54)) 
    p_i_1
       (.I0(p_0),
        .I1(ap_reg_ioackin_video_out_TREADY),
        .I2(video_out_TREADY),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    p_i_10
       (.I0(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    p_i_2
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(p_2),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    p_i_3
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(p_2),
        .I3(Q[6]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h6A)) 
    p_i_4
       (.I0(Q[6]),
        .I1(p_2),
        .I2(Q[5]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    p_i_5
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    p_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    p_i_7
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'h6A)) 
    p_i_8
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    p_i_9
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    tmp_1_cast_reg_910_reg_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\y_reg_257_reg[8] [7]),
        .I2(\y_reg_257_reg[8] [6]),
        .I3(\y_reg_257_reg[8] [5]),
        .I4(\y_reg_257_reg[8] [8]),
        .I5(p_1),
        .O(SR));
  LUT6 #(
    .INIT(64'h00B2B200004D4D00)) 
    \video_out_TDATA[0]_INST_0 
       (.I0(grp_fu_894_p3[8]),
        .I1(grp_fu_894_p3[1]),
        .I2(grp_fu_894_p3[7]),
        .I3(grp_fu_894_p3[6]),
        .I4(grp_fu_894_p3[5]),
        .I5(grp_fu_894_p3[2]),
        .O(video_out_TDATA[0]));
  MUXF8 \video_out_TDATA[10]_INST_0 
       (.I0(mux_7_0[10]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [10]),
        .O(video_out_TDATA[10]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[10]_INST_0_i_1 
       (.I0(mux_6_0[10]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_1__2 [10]),
        .O(mux_7_0[10]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[10]_INST_0_i_2 
       (.I0(mux_6_2[10]),
        .I1(\video_out_TDATA[10]_INST_0_i_6_n_0 ),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [10]),
        .S(grp_fu_894_p3[7]));
  LUT5 #(
    .INIT(32'h28880000)) 
    \video_out_TDATA[10]_INST_0_i_3 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[5]),
        .O(mux_6_0[10]));
  LUT6 #(
    .INIT(64'h0004CCC803333000)) 
    \video_out_TDATA[10]_INST_0_i_4 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[4]),
        .I5(grp_fu_894_p3[5]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_1__2 [10]));
  LUT6 #(
    .INIT(64'h000AAAA015554000)) 
    \video_out_TDATA[10]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[1]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[4]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_2[10]));
  LUT5 #(
    .INIT(32'h00001114)) 
    \video_out_TDATA[10]_INST_0_i_6 
       (.I0(grp_fu_894_p3[5]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[6]),
        .O(\video_out_TDATA[10]_INST_0_i_6_n_0 ));
  MUXF8 \video_out_TDATA[11]_INST_0 
       (.I0(mux_7_0[11]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [11]),
        .O(video_out_TDATA[11]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[11]_INST_0_i_1 
       (.I0(mux_6_0[11]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_1__2 [11]),
        .O(mux_7_0[11]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[11]_INST_0_i_2 
       (.I0(mux_6_2[11]),
        .I1(\video_out_TDATA[11]_INST_0_i_6_n_0 ),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [11]),
        .S(grp_fu_894_p3[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \video_out_TDATA[11]_INST_0_i_3 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[5]),
        .O(mux_6_0[11]));
  LUT6 #(
    .INIT(64'hCCCCCCC803333333)) 
    \video_out_TDATA[11]_INST_0_i_4 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[4]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[5]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_1__2 [11]));
  LUT6 #(
    .INIT(64'hAAAAAA8815555555)) 
    \video_out_TDATA[11]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[1]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_2[11]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \video_out_TDATA[11]_INST_0_i_6 
       (.I0(grp_fu_894_p3[5]),
        .I1(grp_fu_894_p3[3]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[4]),
        .I4(grp_fu_894_p3[6]),
        .O(\video_out_TDATA[11]_INST_0_i_6_n_0 ));
  MUXF7 \video_out_TDATA[1]_INST_0 
       (.I0(mux_7_0[1]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [1]),
        .O(video_out_TDATA[1]),
        .S(grp_fu_894_p3[8]));
  LUT6 #(
    .INIT(64'h000007700FF00880)) 
    \video_out_TDATA[1]_INST_0_i_1 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[7]),
        .I2(grp_fu_894_p3[6]),
        .I3(grp_fu_894_p3[5]),
        .I4(grp_fu_894_p3[2]),
        .I5(grp_fu_894_p3[3]),
        .O(mux_7_0[1]));
  LUT6 #(
    .INIT(64'h00143C3C3C280000)) 
    \video_out_TDATA[1]_INST_0_i_2 
       (.I0(grp_fu_894_p3[7]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[5]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[2]),
        .I5(grp_fu_894_p3[3]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [1]));
  MUXF8 \video_out_TDATA[2]_INST_0 
       (.I0(mux_7_0[2]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [2]),
        .O(video_out_TDATA[2]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[2]_INST_0_i_1 
       (.I0(mux_6_0[2]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_1__2 [2]),
        .O(mux_7_0[2]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[2]_INST_0_i_2 
       (.I0(mux_6_2[2]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_3__1 [2]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [2]),
        .S(grp_fu_894_p3[7]));
  LUT5 #(
    .INIT(32'h06666000)) 
    \video_out_TDATA[2]_INST_0_i_3 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[4]),
        .O(mux_6_0[2]));
  LUT6 #(
    .INIT(64'h0000000666666660)) 
    \video_out_TDATA[2]_INST_0_i_4 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[4]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_1__2 [2]));
  LUT6 #(
    .INIT(64'h0666666660000000)) 
    \video_out_TDATA[2]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[1]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[4]),
        .O(mux_6_2[2]));
  LUT5 #(
    .INIT(32'h00066660)) 
    \video_out_TDATA[2]_INST_0_i_6 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[4]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_3__1 [2]));
  MUXF8 \video_out_TDATA[3]_INST_0 
       (.I0(mux_7_0[3]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [3]),
        .O(video_out_TDATA[3]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[3]_INST_0_i_1 
       (.I0(mux_6_0[3]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_1__2 [3]),
        .O(mux_7_0[3]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[3]_INST_0_i_2 
       (.I0(mux_6_2[3]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_3__1 [3]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [3]),
        .S(grp_fu_894_p3[7]));
  LUT5 #(
    .INIT(32'h42222222)) 
    \video_out_TDATA[3]_INST_0_i_3 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[4]),
        .O(mux_6_0[3]));
  LUT6 #(
    .INIT(64'h4444444444444442)) 
    \video_out_TDATA[3]_INST_0_i_4 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[2]),
        .I5(grp_fu_894_p3[4]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_1__2 [3]));
  LUT6 #(
    .INIT(64'h4222222222222222)) 
    \video_out_TDATA[3]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[1]),
        .I5(grp_fu_894_p3[4]),
        .O(mux_6_2[3]));
  LUT5 #(
    .INIT(32'h44444442)) 
    \video_out_TDATA[3]_INST_0_i_6 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[4]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_3__1 [3]));
  MUXF8 \video_out_TDATA[4]_INST_0 
       (.I0(mux_7_0[4]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [4]),
        .O(video_out_TDATA[4]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[4]_INST_0_i_1 
       (.I0(mux_6_0[4]),
        .I1(\video_out_TDATA[4]_INST_0_i_4_n_0 ),
        .O(mux_7_0[4]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[4]_INST_0_i_2 
       (.I0(mux_6_2[4]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_3__1 [4]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [4]),
        .S(grp_fu_894_p3[7]));
  LUT6 #(
    .INIT(64'hAA00C000550000FF)) 
    \video_out_TDATA[4]_INST_0_i_3 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[6]),
        .I4(grp_fu_894_p3[5]),
        .I5(grp_fu_894_p3[2]),
        .O(mux_6_0[4]));
  LUT6 #(
    .INIT(64'h0000000009090919)) 
    \video_out_TDATA[4]_INST_0_i_4 
       (.I0(grp_fu_894_p3[2]),
        .I1(grp_fu_894_p3[1]),
        .I2(grp_fu_894_p3[5]),
        .I3(grp_fu_894_p3[4]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[6]),
        .O(\video_out_TDATA[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA00AA00A80000000)) 
    \video_out_TDATA[4]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[3]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[4]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_2[4]));
  LUT6 #(
    .INIT(64'h2A552A0001000155)) 
    \video_out_TDATA[4]_INST_0_i_6 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[3]),
        .I2(grp_fu_894_p3[4]),
        .I3(grp_fu_894_p3[5]),
        .I4(grp_fu_894_p3[1]),
        .I5(grp_fu_894_p3[2]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_3__1 [4]));
  MUXF7 \video_out_TDATA[5]_INST_0 
       (.I0(mux_7_0[5]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [5]),
        .O(video_out_TDATA[5]),
        .S(grp_fu_894_p3[8]));
  LUT6 #(
    .INIT(64'h10504000020F0D00)) 
    \video_out_TDATA[5]_INST_0_i_1 
       (.I0(grp_fu_894_p3[7]),
        .I1(grp_fu_894_p3[1]),
        .I2(grp_fu_894_p3[6]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_7_0[5]));
  LUT6 #(
    .INIT(64'h0C0C84C002020220)) 
    \video_out_TDATA[5]_INST_0_i_2 
       (.I0(grp_fu_894_p3[7]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[2]),
        .I5(grp_fu_894_p3[5]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [5]));
  MUXF8 \video_out_TDATA[6]_INST_0 
       (.I0(mux_7_0[6]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [6]),
        .O(video_out_TDATA[6]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[6]_INST_0_i_1 
       (.I0(mux_6_0[6]),
        .I1(\video_out_TDATA[6]_INST_0_i_4_n_0 ),
        .O(mux_7_0[6]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[6]_INST_0_i_2 
       (.I0(mux_6_2[6]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_3__1 [6]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [6]),
        .S(grp_fu_894_p3[7]));
  LUT6 #(
    .INIT(64'h040CC8C003333000)) 
    \video_out_TDATA[6]_INST_0_i_3 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[4]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_0[6]));
  LUT6 #(
    .INIT(64'h0000000011141414)) 
    \video_out_TDATA[6]_INST_0_i_4 
       (.I0(grp_fu_894_p3[5]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[1]),
        .I5(grp_fu_894_p3[6]),
        .O(\video_out_TDATA[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2828288800000000)) 
    \video_out_TDATA[6]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[2]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_2[6]));
  LUT6 #(
    .INIT(64'h0022AA8801555400)) 
    \video_out_TDATA[6]_INST_0_i_6 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[2]),
        .I2(grp_fu_894_p3[1]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[4]),
        .I5(grp_fu_894_p3[5]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_3__1 [6]));
  MUXF8 \video_out_TDATA[7]_INST_0 
       (.I0(mux_7_0[7]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [7]),
        .O(video_out_TDATA[7]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[7]_INST_0_i_1 
       (.I0(mux_6_0[7]),
        .I1(\video_out_TDATA[7]_INST_0_i_4_n_0 ),
        .O(mux_7_0[7]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[7]_INST_0_i_2 
       (.I0(mux_6_2[7]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_3__1 [7]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [7]),
        .S(grp_fu_894_p3[7]));
  LUT6 #(
    .INIT(64'hCCCCC8C003333333)) 
    \video_out_TDATA[7]_INST_0_i_3 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[4]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_0[7]));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \video_out_TDATA[7]_INST_0_i_4 
       (.I0(grp_fu_894_p3[5]),
        .I1(grp_fu_894_p3[3]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[4]),
        .I5(grp_fu_894_p3[6]),
        .O(\video_out_TDATA[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \video_out_TDATA[7]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[5]),
        .O(mux_6_2[7]));
  LUT6 #(
    .INIT(64'h2A2AA8A811155555)) 
    \video_out_TDATA[7]_INST_0_i_6 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[1]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[5]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_3__1 [7]));
  MUXF8 \video_out_TDATA[8]_INST_0 
       (.I0(mux_7_0[8]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [8]),
        .O(video_out_TDATA[8]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[8]_INST_0_i_1 
       (.I0(mux_6_0[8]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_1__2 [8]),
        .O(mux_7_0[8]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[8]_INST_0_i_2 
       (.I0(mux_6_2[8]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_3__1 [8]),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [8]),
        .S(grp_fu_894_p3[7]));
  LUT6 #(
    .INIT(64'h3F3CFCFC3C7CFC3C)) 
    \video_out_TDATA[8]_INST_0_i_3 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[5]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[2]),
        .I5(grp_fu_894_p3[4]),
        .O(mux_6_0[8]));
  LUT4 #(
    .INIT(16'h4083)) 
    \video_out_TDATA[8]_INST_0_i_4 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[5]),
        .I3(grp_fu_894_p3[2]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_1__2 [8]));
  LUT4 #(
    .INIT(16'hA014)) 
    \video_out_TDATA[8]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[1]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[5]),
        .O(mux_6_2[8]));
  LUT6 #(
    .INIT(64'h6776767E6676767E)) 
    \video_out_TDATA[8]_INST_0_i_6 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[5]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[4]),
        .I4(grp_fu_894_p3[3]),
        .I5(grp_fu_894_p3[1]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_3__1 [8]));
  MUXF8 \video_out_TDATA[9]_INST_0 
       (.I0(mux_7_0[9]),
        .I1(\mandelbrot_frame_bkb_U1/mux_7_1__4 [9]),
        .O(video_out_TDATA[9]),
        .S(grp_fu_894_p3[8]));
  MUXF7 \video_out_TDATA[9]_INST_0_i_1 
       (.I0(mux_6_0[9]),
        .I1(\mandelbrot_frame_bkb_U1/mux_6_1__2 [9]),
        .O(mux_7_0[9]),
        .S(grp_fu_894_p3[7]));
  MUXF7 \video_out_TDATA[9]_INST_0_i_2 
       (.I0(mux_6_2[9]),
        .I1(\video_out_TDATA[9]_INST_0_i_6_n_0 ),
        .O(\mandelbrot_frame_bkb_U1/mux_7_1__4 [9]),
        .S(grp_fu_894_p3[7]));
  LUT5 #(
    .INIT(32'h0AA20000)) 
    \video_out_TDATA[9]_INST_0_i_3 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[5]),
        .O(mux_6_0[9]));
  LUT5 #(
    .INIT(32'h04C80330)) 
    \video_out_TDATA[9]_INST_0_i_4 
       (.I0(grp_fu_894_p3[1]),
        .I1(grp_fu_894_p3[6]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[5]),
        .O(\mandelbrot_frame_bkb_U1/mux_6_1__2 [9]));
  LUT5 #(
    .INIT(32'h0AA01540)) 
    \video_out_TDATA[9]_INST_0_i_5 
       (.I0(grp_fu_894_p3[6]),
        .I1(grp_fu_894_p3[1]),
        .I2(grp_fu_894_p3[2]),
        .I3(grp_fu_894_p3[3]),
        .I4(grp_fu_894_p3[5]),
        .O(mux_6_2[9]));
  LUT5 #(
    .INIT(32'h00004550)) 
    \video_out_TDATA[9]_INST_0_i_6 
       (.I0(grp_fu_894_p3[5]),
        .I1(grp_fu_894_p3[4]),
        .I2(grp_fu_894_p3[3]),
        .I3(grp_fu_894_p3[2]),
        .I4(grp_fu_894_p3[6]),
        .O(\video_out_TDATA[9]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \video_out_TLAST[0]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(p_2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \video_out_TUSER[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(tmp_1_cast_reg_910_reg));
  LUT6 #(
    .INIT(64'h5555555555D55555)) 
    video_out_TVALID_INST_0_i_1
       (.I0(ap_CS_fsm_state3),
        .I1(tmp_1_cast_reg_910_reg),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(p_0));
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
