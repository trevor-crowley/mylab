// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Mar 11 21:30:52 2018
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
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready_INST_0_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire i_op_assign_reg_107;
  wire \i_op_assign_reg_107_reg_n_0_[0] ;
  wire \i_op_assign_reg_107_reg_n_0_[1] ;
  wire \i_op_assign_reg_107_reg_n_0_[2] ;
  wire \i_op_assign_reg_107_reg_n_0_[3] ;
  wire \i_op_assign_reg_107_reg_n_0_[4] ;
  wire \i_op_assign_reg_107_reg_n_0_[5] ;
  wire \i_op_assign_reg_107_reg_n_0_[6] ;
  wire \i_op_assign_reg_107_reg_n_0_[7] ;
  wire \i_op_assign_reg_107_reg_n_0_[8] ;
  wire [7:0]next_mul_fu_207_p2;
  wire [7:0]next_mul_reg_253;
  wire next_mul_reg_2530;
  wire \next_mul_reg_253[3]_i_2_n_0 ;
  wire \next_mul_reg_253[3]_i_3_n_0 ;
  wire \next_mul_reg_253[3]_i_4_n_0 ;
  wire \next_mul_reg_253[3]_i_5_n_0 ;
  wire \next_mul_reg_253[7]_i_3_n_0 ;
  wire \next_mul_reg_253[7]_i_4_n_0 ;
  wire \next_mul_reg_253[7]_i_5_n_0 ;
  wire \next_mul_reg_253[7]_i_6_n_0 ;
  wire \next_mul_reg_253[7]_i_7_n_0 ;
  wire \next_mul_reg_253[7]_i_8_n_0 ;
  wire \next_mul_reg_253_reg[3]_i_1_n_0 ;
  wire \next_mul_reg_253_reg[3]_i_1_n_1 ;
  wire \next_mul_reg_253_reg[3]_i_1_n_2 ;
  wire \next_mul_reg_253_reg[3]_i_1_n_3 ;
  wire \next_mul_reg_253_reg[7]_i_2_n_1 ;
  wire \next_mul_reg_253_reg[7]_i_2_n_2 ;
  wire \next_mul_reg_253_reg[7]_i_2_n_3 ;
  wire [7:0]r_V_reg_130;
  wire r_V_reg_1300;
  wire [7:0]rhs_V_cast_reg_230_reg__0;
  wire \tmp_last_V_reg_248[0]_i_1_n_0 ;
  wire \tmp_last_V_reg_248[0]_i_2_n_0 ;
  wire \tmp_last_V_reg_248[0]_i_3_n_0 ;
  wire \tmp_user_V_reg_243[0]_i_1_n_0 ;
  wire \tmp_user_V_reg_243[0]_i_2_n_0 ;
  wire \tmp_user_V_reg_243[0]_i_3_n_0 ;
  wire \tmp_user_V_reg_243[0]_i_4_n_0 ;
  wire [9:0]val_assign_2_reg_119;
  wire [11:0]\^video_out_TDATA ;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;
  wire [9:0]x_fu_163_p2;
  wire [9:0]x_reg_238;
  wire \x_reg_238[9]_i_2_n_0 ;
  wire [8:0]y_fu_147_p2;
  wire [8:0]y_reg_225;
  wire \y_reg_225[8]_i_2_n_0 ;
  wire [3:3]\NLW_next_mul_reg_253_reg[7]_i_2_CO_UNCONNECTED ;

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
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(\ap_CS_fsm[1]_i_2_n_0 ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(val_assign_2_reg_119[7]),
        .I1(\tmp_last_V_reg_248[0]_i_3_n_0 ),
        .I2(val_assign_2_reg_119[6]),
        .I3(val_assign_2_reg_119[5]),
        .I4(val_assign_2_reg_119[0]),
        .I5(\next_mul_reg_253[7]_i_3_n_0 ),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(r_V_reg_1300),
        .I1(video_out_TVALID),
        .I2(video_out_TREADY),
        .O(ap_NS_fsm[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(next_mul_reg_2530),
        .I1(video_out_TREADY),
        .I2(video_out_TVALID),
        .O(ap_NS_fsm[3]));
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .I1(ap_ready_INST_0_i_1_n_0),
        .I2(\i_op_assign_reg_107_reg_n_0_[7] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[5] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[6] ),
        .I5(\i_op_assign_reg_107_reg_n_0_[8] ),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ap_ready_INST_0_i_1
       (.I0(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[3] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[4] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[2] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[1] ),
        .O(ap_ready_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hD000)) 
    \i_op_assign_reg_107[8]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\ap_CS_fsm[1]_i_2_n_0 ),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .O(i_op_assign_reg_107));
  LUT5 #(
    .INIT(32'h00000800)) 
    \i_op_assign_reg_107[8]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(val_assign_2_reg_119[7]),
        .I2(val_assign_2_reg_119[8]),
        .I3(val_assign_2_reg_119[9]),
        .I4(\tmp_user_V_reg_243[0]_i_4_n_0 ),
        .O(ap_NS_fsm15_out));
  FDRE \i_op_assign_reg_107_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[0]),
        .Q(\i_op_assign_reg_107_reg_n_0_[0] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[1]),
        .Q(\i_op_assign_reg_107_reg_n_0_[1] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[2]),
        .Q(\i_op_assign_reg_107_reg_n_0_[2] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[3]),
        .Q(\i_op_assign_reg_107_reg_n_0_[3] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[4]),
        .Q(\i_op_assign_reg_107_reg_n_0_[4] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[5]),
        .Q(\i_op_assign_reg_107_reg_n_0_[5] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[6]),
        .Q(\i_op_assign_reg_107_reg_n_0_[6] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[7]),
        .Q(\i_op_assign_reg_107_reg_n_0_[7] ),
        .R(i_op_assign_reg_107));
  FDRE \i_op_assign_reg_107_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(y_reg_225[8]),
        .Q(\i_op_assign_reg_107_reg_n_0_[8] ),
        .R(i_op_assign_reg_107));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[3]_i_2 
       (.I0(rhs_V_cast_reg_230_reg__0[3]),
        .I1(r_V_reg_130[3]),
        .O(\next_mul_reg_253[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[3]_i_3 
       (.I0(rhs_V_cast_reg_230_reg__0[2]),
        .I1(r_V_reg_130[2]),
        .O(\next_mul_reg_253[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[3]_i_4 
       (.I0(rhs_V_cast_reg_230_reg__0[1]),
        .I1(r_V_reg_130[1]),
        .O(\next_mul_reg_253[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[3]_i_5 
       (.I0(rhs_V_cast_reg_230_reg__0[0]),
        .I1(r_V_reg_130[0]),
        .O(\next_mul_reg_253[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \next_mul_reg_253[7]_i_1 
       (.I0(\next_mul_reg_253[7]_i_3_n_0 ),
        .I1(\next_mul_reg_253[7]_i_4_n_0 ),
        .I2(val_assign_2_reg_119[9]),
        .I3(val_assign_2_reg_119[8]),
        .I4(val_assign_2_reg_119[7]),
        .I5(ap_CS_fsm_state3),
        .O(next_mul_reg_2530));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_mul_reg_253[7]_i_3 
       (.I0(val_assign_2_reg_119[2]),
        .I1(val_assign_2_reg_119[1]),
        .I2(val_assign_2_reg_119[4]),
        .I3(val_assign_2_reg_119[3]),
        .O(\next_mul_reg_253[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \next_mul_reg_253[7]_i_4 
       (.I0(val_assign_2_reg_119[6]),
        .I1(val_assign_2_reg_119[5]),
        .I2(val_assign_2_reg_119[0]),
        .O(\next_mul_reg_253[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[7]_i_5 
       (.I0(rhs_V_cast_reg_230_reg__0[7]),
        .I1(r_V_reg_130[7]),
        .O(\next_mul_reg_253[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[7]_i_6 
       (.I0(rhs_V_cast_reg_230_reg__0[6]),
        .I1(r_V_reg_130[6]),
        .O(\next_mul_reg_253[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[7]_i_7 
       (.I0(rhs_V_cast_reg_230_reg__0[5]),
        .I1(r_V_reg_130[5]),
        .O(\next_mul_reg_253[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_mul_reg_253[7]_i_8 
       (.I0(rhs_V_cast_reg_230_reg__0[4]),
        .I1(r_V_reg_130[4]),
        .O(\next_mul_reg_253[7]_i_8_n_0 ));
  FDRE \next_mul_reg_253_reg[0] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[0]),
        .Q(next_mul_reg_253[0]),
        .R(1'b0));
  FDRE \next_mul_reg_253_reg[1] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[1]),
        .Q(next_mul_reg_253[1]),
        .R(1'b0));
  FDRE \next_mul_reg_253_reg[2] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[2]),
        .Q(next_mul_reg_253[2]),
        .R(1'b0));
  FDRE \next_mul_reg_253_reg[3] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[3]),
        .Q(next_mul_reg_253[3]),
        .R(1'b0));
  CARRY4 \next_mul_reg_253_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\next_mul_reg_253_reg[3]_i_1_n_0 ,\next_mul_reg_253_reg[3]_i_1_n_1 ,\next_mul_reg_253_reg[3]_i_1_n_2 ,\next_mul_reg_253_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_cast_reg_230_reg__0[3:0]),
        .O(next_mul_fu_207_p2[3:0]),
        .S({\next_mul_reg_253[3]_i_2_n_0 ,\next_mul_reg_253[3]_i_3_n_0 ,\next_mul_reg_253[3]_i_4_n_0 ,\next_mul_reg_253[3]_i_5_n_0 }));
  FDRE \next_mul_reg_253_reg[4] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[4]),
        .Q(next_mul_reg_253[4]),
        .R(1'b0));
  FDRE \next_mul_reg_253_reg[5] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[5]),
        .Q(next_mul_reg_253[5]),
        .R(1'b0));
  FDRE \next_mul_reg_253_reg[6] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[6]),
        .Q(next_mul_reg_253[6]),
        .R(1'b0));
  FDRE \next_mul_reg_253_reg[7] 
       (.C(ap_clk),
        .CE(next_mul_reg_2530),
        .D(next_mul_fu_207_p2[7]),
        .Q(next_mul_reg_253[7]),
        .R(1'b0));
  CARRY4 \next_mul_reg_253_reg[7]_i_2 
       (.CI(\next_mul_reg_253_reg[3]_i_1_n_0 ),
        .CO({\NLW_next_mul_reg_253_reg[7]_i_2_CO_UNCONNECTED [3],\next_mul_reg_253_reg[7]_i_2_n_1 ,\next_mul_reg_253_reg[7]_i_2_n_2 ,\next_mul_reg_253_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rhs_V_cast_reg_230_reg__0[6:4]}),
        .O(next_mul_fu_207_p2[7:4]),
        .S({\next_mul_reg_253[7]_i_5_n_0 ,\next_mul_reg_253[7]_i_6_n_0 ,\next_mul_reg_253[7]_i_7_n_0 ,\next_mul_reg_253[7]_i_8_n_0 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb palette_V_U
       (.Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .\r_V_reg_130_reg[7] (r_V_reg_130),
        .video_out_TDATA(\^video_out_TDATA ));
  FDRE \r_V_reg_130_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[0]),
        .Q(r_V_reg_130[0]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[1]),
        .Q(r_V_reg_130[1]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[2]),
        .Q(r_V_reg_130[2]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[3]),
        .Q(r_V_reg_130[3]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[4]),
        .Q(r_V_reg_130[4]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[5]),
        .Q(r_V_reg_130[5]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[6]),
        .Q(r_V_reg_130[6]),
        .R(r_V_reg_1300));
  FDRE \r_V_reg_130_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(next_mul_reg_253[7]),
        .Q(r_V_reg_130[7]),
        .R(r_V_reg_1300));
  FDRE \rhs_V_cast_reg_230_reg[0] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[0] ),
        .Q(rhs_V_cast_reg_230_reg__0[0]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[1] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[1] ),
        .Q(rhs_V_cast_reg_230_reg__0[1]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[2] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[2] ),
        .Q(rhs_V_cast_reg_230_reg__0[2]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[3] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[3] ),
        .Q(rhs_V_cast_reg_230_reg__0[3]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[4] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[4] ),
        .Q(rhs_V_cast_reg_230_reg__0[4]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[5] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[5] ),
        .Q(rhs_V_cast_reg_230_reg__0[5]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[6] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[6] ),
        .Q(rhs_V_cast_reg_230_reg__0[6]),
        .R(1'b0));
  FDRE \rhs_V_cast_reg_230_reg[7] 
       (.C(ap_clk),
        .CE(r_V_reg_1300),
        .D(\i_op_assign_reg_107_reg_n_0_[7] ),
        .Q(rhs_V_cast_reg_230_reg__0[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \tmp_last_V_reg_248[0]_i_1 
       (.I0(\tmp_last_V_reg_248[0]_i_2_n_0 ),
        .I1(val_assign_2_reg_119[7]),
        .I2(ap_CS_fsm_state3),
        .I3(\tmp_last_V_reg_248[0]_i_3_n_0 ),
        .I4(next_mul_reg_2530),
        .I5(video_out_TLAST),
        .O(\tmp_last_V_reg_248[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmp_last_V_reg_248[0]_i_2 
       (.I0(\x_reg_238[9]_i_2_n_0 ),
        .I1(val_assign_2_reg_119[6]),
        .O(\tmp_last_V_reg_248[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tmp_last_V_reg_248[0]_i_3 
       (.I0(val_assign_2_reg_119[8]),
        .I1(val_assign_2_reg_119[9]),
        .O(\tmp_last_V_reg_248[0]_i_3_n_0 ));
  FDRE \tmp_last_V_reg_248_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_last_V_reg_248[0]_i_1_n_0 ),
        .Q(video_out_TLAST),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    \tmp_user_V_reg_243[0]_i_1 
       (.I0(\tmp_user_V_reg_243[0]_i_2_n_0 ),
        .I1(\tmp_user_V_reg_243[0]_i_3_n_0 ),
        .I2(\tmp_user_V_reg_243[0]_i_4_n_0 ),
        .I3(next_mul_reg_2530),
        .I4(video_out_TUSER),
        .O(\tmp_user_V_reg_243[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \tmp_user_V_reg_243[0]_i_2 
       (.I0(\i_op_assign_reg_107_reg_n_0_[6] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[5] ),
        .I2(ap_ready_INST_0_i_1_n_0),
        .O(\tmp_user_V_reg_243[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \tmp_user_V_reg_243[0]_i_3 
       (.I0(val_assign_2_reg_119[7]),
        .I1(val_assign_2_reg_119[8]),
        .I2(\i_op_assign_reg_107_reg_n_0_[7] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[8] ),
        .I4(val_assign_2_reg_119[9]),
        .I5(ap_CS_fsm_state3),
        .O(\tmp_user_V_reg_243[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_user_V_reg_243[0]_i_4 
       (.I0(\next_mul_reg_253[7]_i_3_n_0 ),
        .I1(val_assign_2_reg_119[0]),
        .I2(val_assign_2_reg_119[5]),
        .I3(val_assign_2_reg_119[6]),
        .O(\tmp_user_V_reg_243[0]_i_4_n_0 ));
  FDRE \tmp_user_V_reg_243_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_user_V_reg_243[0]_i_1_n_0 ),
        .Q(video_out_TUSER),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \val_assign_2_reg_119[9]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(\i_op_assign_reg_107_reg_n_0_[7] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[5] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[6] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[8] ),
        .I5(ap_CS_fsm_state2),
        .O(r_V_reg_1300));
  LUT2 #(
    .INIT(4'h8)) 
    \val_assign_2_reg_119[9]_i_2 
       (.I0(video_out_TREADY),
        .I1(video_out_TVALID),
        .O(ap_NS_fsm1));
  FDRE \val_assign_2_reg_119_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[0]),
        .Q(val_assign_2_reg_119[0]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[1]),
        .Q(val_assign_2_reg_119[1]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[2]),
        .Q(val_assign_2_reg_119[2]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[3]),
        .Q(val_assign_2_reg_119[3]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[4]),
        .Q(val_assign_2_reg_119[4]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[5]),
        .Q(val_assign_2_reg_119[5]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[6]),
        .Q(val_assign_2_reg_119[6]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[7]),
        .Q(val_assign_2_reg_119[7]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[8]),
        .Q(val_assign_2_reg_119[8]),
        .R(r_V_reg_1300));
  FDRE \val_assign_2_reg_119_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(x_reg_238[9]),
        .Q(val_assign_2_reg_119[9]),
        .R(r_V_reg_1300));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_reg_238[0]_i_1 
       (.I0(val_assign_2_reg_119[0]),
        .O(x_fu_163_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_reg_238[1]_i_1 
       (.I0(val_assign_2_reg_119[0]),
        .I1(val_assign_2_reg_119[1]),
        .O(x_fu_163_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_reg_238[2]_i_1 
       (.I0(val_assign_2_reg_119[1]),
        .I1(val_assign_2_reg_119[0]),
        .I2(val_assign_2_reg_119[2]),
        .O(x_fu_163_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_reg_238[3]_i_1 
       (.I0(val_assign_2_reg_119[2]),
        .I1(val_assign_2_reg_119[0]),
        .I2(val_assign_2_reg_119[1]),
        .I3(val_assign_2_reg_119[3]),
        .O(x_fu_163_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_reg_238[4]_i_1 
       (.I0(val_assign_2_reg_119[3]),
        .I1(val_assign_2_reg_119[1]),
        .I2(val_assign_2_reg_119[0]),
        .I3(val_assign_2_reg_119[2]),
        .I4(val_assign_2_reg_119[4]),
        .O(x_fu_163_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_reg_238[5]_i_1 
       (.I0(val_assign_2_reg_119[4]),
        .I1(val_assign_2_reg_119[2]),
        .I2(val_assign_2_reg_119[0]),
        .I3(val_assign_2_reg_119[1]),
        .I4(val_assign_2_reg_119[3]),
        .I5(val_assign_2_reg_119[5]),
        .O(x_fu_163_p2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \x_reg_238[6]_i_1 
       (.I0(\x_reg_238[9]_i_2_n_0 ),
        .I1(val_assign_2_reg_119[6]),
        .O(x_fu_163_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \x_reg_238[7]_i_1 
       (.I0(val_assign_2_reg_119[6]),
        .I1(\x_reg_238[9]_i_2_n_0 ),
        .I2(val_assign_2_reg_119[7]),
        .O(x_fu_163_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \x_reg_238[8]_i_1 
       (.I0(val_assign_2_reg_119[7]),
        .I1(\x_reg_238[9]_i_2_n_0 ),
        .I2(val_assign_2_reg_119[6]),
        .I3(val_assign_2_reg_119[8]),
        .O(x_fu_163_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCC6CCCCC)) 
    \x_reg_238[9]_i_1 
       (.I0(val_assign_2_reg_119[8]),
        .I1(val_assign_2_reg_119[9]),
        .I2(val_assign_2_reg_119[6]),
        .I3(\x_reg_238[9]_i_2_n_0 ),
        .I4(val_assign_2_reg_119[7]),
        .O(x_fu_163_p2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x_reg_238[9]_i_2 
       (.I0(val_assign_2_reg_119[4]),
        .I1(val_assign_2_reg_119[2]),
        .I2(val_assign_2_reg_119[0]),
        .I3(val_assign_2_reg_119[1]),
        .I4(val_assign_2_reg_119[3]),
        .I5(val_assign_2_reg_119[5]),
        .O(\x_reg_238[9]_i_2_n_0 ));
  FDRE \x_reg_238_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[0]),
        .Q(x_reg_238[0]),
        .R(1'b0));
  FDRE \x_reg_238_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[1]),
        .Q(x_reg_238[1]),
        .R(1'b0));
  FDRE \x_reg_238_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[2]),
        .Q(x_reg_238[2]),
        .R(1'b0));
  FDRE \x_reg_238_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[3]),
        .Q(x_reg_238[3]),
        .R(1'b0));
  FDRE \x_reg_238_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[4]),
        .Q(x_reg_238[4]),
        .R(1'b0));
  FDRE \x_reg_238_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[5]),
        .Q(x_reg_238[5]),
        .R(1'b0));
  FDRE \x_reg_238_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[6]),
        .Q(x_reg_238[6]),
        .R(1'b0));
  FDRE \x_reg_238_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[7]),
        .Q(x_reg_238[7]),
        .R(1'b0));
  FDRE \x_reg_238_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[8]),
        .Q(x_reg_238[8]),
        .R(1'b0));
  FDRE \x_reg_238_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(x_fu_163_p2[9]),
        .Q(x_reg_238[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \y_reg_225[0]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[0] ),
        .O(y_fu_147_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_reg_225[1]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[1] ),
        .O(y_fu_147_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_reg_225[2]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[1] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[2] ),
        .O(y_fu_147_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_reg_225[3]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[2] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[1] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[3] ),
        .O(y_fu_147_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_reg_225[4]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[3] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[1] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[2] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[4] ),
        .O(y_fu_147_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_reg_225[5]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[4] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[2] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[1] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[3] ),
        .I5(\i_op_assign_reg_107_reg_n_0_[5] ),
        .O(y_fu_147_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \y_reg_225[6]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[5] ),
        .I1(\y_reg_225[8]_i_2_n_0 ),
        .I2(\i_op_assign_reg_107_reg_n_0_[6] ),
        .O(y_fu_147_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \y_reg_225[7]_i_1 
       (.I0(\i_op_assign_reg_107_reg_n_0_[5] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[6] ),
        .I2(\y_reg_225[8]_i_2_n_0 ),
        .I3(\i_op_assign_reg_107_reg_n_0_[7] ),
        .O(y_fu_147_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \y_reg_225[8]_i_1 
       (.I0(\y_reg_225[8]_i_2_n_0 ),
        .I1(\i_op_assign_reg_107_reg_n_0_[6] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[5] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[7] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[8] ),
        .O(y_fu_147_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \y_reg_225[8]_i_2 
       (.I0(\i_op_assign_reg_107_reg_n_0_[3] ),
        .I1(\i_op_assign_reg_107_reg_n_0_[1] ),
        .I2(\i_op_assign_reg_107_reg_n_0_[0] ),
        .I3(\i_op_assign_reg_107_reg_n_0_[2] ),
        .I4(\i_op_assign_reg_107_reg_n_0_[4] ),
        .O(\y_reg_225[8]_i_2_n_0 ));
  FDRE \y_reg_225_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[0]),
        .Q(y_reg_225[0]),
        .R(1'b0));
  FDRE \y_reg_225_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[1]),
        .Q(y_reg_225[1]),
        .R(1'b0));
  FDRE \y_reg_225_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[2]),
        .Q(y_reg_225[2]),
        .R(1'b0));
  FDRE \y_reg_225_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[3]),
        .Q(y_reg_225[3]),
        .R(1'b0));
  FDRE \y_reg_225_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[4]),
        .Q(y_reg_225[4]),
        .R(1'b0));
  FDRE \y_reg_225_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[5]),
        .Q(y_reg_225[5]),
        .R(1'b0));
  FDRE \y_reg_225_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[6]),
        .Q(y_reg_225[6]),
        .R(1'b0));
  FDRE \y_reg_225_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[7]),
        .Q(y_reg_225[7]),
        .R(1'b0));
  FDRE \y_reg_225_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_fu_147_p2[8]),
        .Q(y_reg_225[8]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb
   (video_out_TDATA,
    Q,
    ap_clk,
    \r_V_reg_130_reg[7] );
  output [11:0]video_out_TDATA;
  input [0:0]Q;
  input ap_clk;
  input [7:0]\r_V_reg_130_reg[7] ;

  wire [0:0]Q;
  wire ap_clk;
  wire [7:0]\r_V_reg_130_reg[7] ;
  wire [11:0]video_out_TDATA;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb_rom mandelbrot_frame_bkb_rom_U
       (.Q(Q),
        .ap_clk(ap_clk),
        .\r_V_reg_130_reg[7] (\r_V_reg_130_reg[7] ),
        .video_out_TDATA(video_out_TDATA));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mandelbrot_frame_bkb_rom
   (video_out_TDATA,
    Q,
    ap_clk,
    \r_V_reg_130_reg[7] );
  output [11:0]video_out_TDATA;
  input [0:0]Q;
  input ap_clk;
  input [7:0]\r_V_reg_130_reg[7] ;

  wire [0:0]Q;
  wire ap_clk;
  wire \q0[0]_i_1_n_0 ;
  wire \q0[10]_i_1_n_0 ;
  wire \q0[10]_i_2_n_0 ;
  wire \q0[10]_i_3_n_0 ;
  wire \q0[11]_i_1_n_0 ;
  wire \q0[11]_i_2_n_0 ;
  wire \q0[11]_i_3_n_0 ;
  wire \q0[1]_i_2_n_0 ;
  wire \q0[1]_i_3_n_0 ;
  wire \q0[2]_i_1_n_0 ;
  wire \q0[2]_i_2_n_0 ;
  wire \q0[2]_i_3_n_0 ;
  wire \q0[3]_i_1_n_0 ;
  wire \q0[3]_i_2_n_0 ;
  wire \q0[3]_i_3_n_0 ;
  wire \q0[4]_i_1_n_0 ;
  wire \q0[4]_i_2_n_0 ;
  wire \q0[4]_i_3_n_0 ;
  wire \q0[4]_i_4_n_0 ;
  wire \q0[5]_i_1_n_0 ;
  wire \q0[5]_i_2_n_0 ;
  wire \q0[6]_i_1_n_0 ;
  wire \q0[6]_i_2_n_0 ;
  wire \q0[7]_i_1_n_0 ;
  wire \q0[7]_i_2_n_0 ;
  wire \q0[7]_i_3_n_0 ;
  wire \q0[8]_i_1_n_0 ;
  wire \q0[8]_i_2_n_0 ;
  wire \q0[8]_i_3_n_0 ;
  wire \q0[8]_i_4_n_0 ;
  wire \q0[8]_i_5_n_0 ;
  wire \q0[9]_i_2_n_0 ;
  wire \q0[9]_i_3_n_0 ;
  wire \q0_reg[1]_i_1_n_0 ;
  wire \q0_reg[9]_i_1_n_0 ;
  wire [7:0]\r_V_reg_130_reg[7] ;
  wire [11:0]video_out_TDATA;

  LUT6 #(
    .INIT(64'h0822088241104410)) 
    \q0[0]_i_1 
       (.I0(\r_V_reg_130_reg[7] [4]),
        .I1(\r_V_reg_130_reg[7] [1]),
        .I2(\r_V_reg_130_reg[7] [6]),
        .I3(\r_V_reg_130_reg[7] [7]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [5]),
        .O(\q0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[10]_i_1 
       (.I0(\q0[10]_i_2_n_0 ),
        .I1(\r_V_reg_130_reg[7] [4]),
        .I2(\q0[10]_i_3_n_0 ),
        .I3(\r_V_reg_130_reg[7] [5]),
        .O(\q0[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h50655066606660A6)) 
    \q0[10]_i_2 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [1]),
        .O(\q0[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666A000056666A6A)) 
    \q0[10]_i_3 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [1]),
        .I3(\r_V_reg_130_reg[7] [0]),
        .I4(\r_V_reg_130_reg[7] [6]),
        .I5(\r_V_reg_130_reg[7] [7]),
        .O(\q0[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[11]_i_1 
       (.I0(\q0[11]_i_2_n_0 ),
        .I1(\r_V_reg_130_reg[7] [4]),
        .I2(\q0[11]_i_3_n_0 ),
        .I3(\r_V_reg_130_reg[7] [5]),
        .O(\q0[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h708F708EE08EE00E)) 
    \q0[11]_i_2 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [1]),
        .O(\q0[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7071070771F10F0F)) 
    \q0[11]_i_3 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [0]),
        .I4(\r_V_reg_130_reg[7] [6]),
        .I5(\r_V_reg_130_reg[7] [1]),
        .O(\q0[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000005474A888)) 
    \q0[1]_i_2 
       (.I0(\r_V_reg_130_reg[7] [1]),
        .I1(\r_V_reg_130_reg[7] [6]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [0]),
        .I4(\r_V_reg_130_reg[7] [2]),
        .I5(\r_V_reg_130_reg[7] [5]),
        .O(\q0[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05150AEA00000000)) 
    \q0[1]_i_3 
       (.I0(\r_V_reg_130_reg[7] [1]),
        .I1(\r_V_reg_130_reg[7] [0]),
        .I2(\r_V_reg_130_reg[7] [6]),
        .I3(\r_V_reg_130_reg[7] [7]),
        .I4(\r_V_reg_130_reg[7] [2]),
        .I5(\r_V_reg_130_reg[7] [5]),
        .O(\q0[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[2]_i_1 
       (.I0(\q0[2]_i_2_n_0 ),
        .I1(\r_V_reg_130_reg[7] [4]),
        .I2(\q0[2]_i_3_n_0 ),
        .I3(\r_V_reg_130_reg[7] [5]),
        .O(\q0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05050506566A566A)) 
    \q0[2]_i_2 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [6]),
        .O(\q0[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555A6AAA5AAA0000)) 
    \q0[2]_i_3 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [0]),
        .I2(\r_V_reg_130_reg[7] [2]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [6]),
        .I5(\r_V_reg_130_reg[7] [7]),
        .O(\q0[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \q0[3]_i_1 
       (.I0(\q0[3]_i_2_n_0 ),
        .I1(\r_V_reg_130_reg[7] [4]),
        .I2(\q0[3]_i_3_n_0 ),
        .I3(\r_V_reg_130_reg[7] [5]),
        .O(\q0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0F0EF8E0F8E0)) 
    \q0[3]_i_2 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [6]),
        .O(\q0[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00033FFF7FFF0000)) 
    \q0[3]_i_3 
       (.I0(\r_V_reg_130_reg[7] [0]),
        .I1(\r_V_reg_130_reg[7] [3]),
        .I2(\r_V_reg_130_reg[7] [2]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [7]),
        .I5(\r_V_reg_130_reg[7] [6]),
        .O(\q0[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q0[4]_i_1 
       (.I0(\q0[4]_i_2_n_0 ),
        .I1(\r_V_reg_130_reg[7] [4]),
        .I2(\q0[4]_i_3_n_0 ),
        .I3(\r_V_reg_130_reg[7] [5]),
        .I4(\q0[4]_i_4_n_0 ),
        .O(\q0[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000144)) 
    \q0[4]_i_2 
       (.I0(\r_V_reg_130_reg[7] [2]),
        .I1(\r_V_reg_130_reg[7] [7]),
        .I2(\r_V_reg_130_reg[7] [0]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .I4(\r_V_reg_130_reg[7] [1]),
        .I5(\r_V_reg_130_reg[7] [3]),
        .O(\q0[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC993)) 
    \q0[4]_i_3 
       (.I0(\r_V_reg_130_reg[7] [7]),
        .I1(\r_V_reg_130_reg[7] [1]),
        .I2(\r_V_reg_130_reg[7] [0]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .O(\q0[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A80000000000000)) 
    \q0[4]_i_4 
       (.I0(\r_V_reg_130_reg[7] [2]),
        .I1(\r_V_reg_130_reg[7] [0]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .I4(\r_V_reg_130_reg[7] [1]),
        .I5(\r_V_reg_130_reg[7] [3]),
        .O(\q0[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \q0[5]_i_1 
       (.I0(\r_V_reg_130_reg[7] [4]),
        .I1(\q0[5]_i_2_n_0 ),
        .I2(\r_V_reg_130_reg[7] [5]),
        .O(\q0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5565A6AA)) 
    \q0[5]_i_2 
       (.I0(\r_V_reg_130_reg[7] [2]),
        .I1(\r_V_reg_130_reg[7] [7]),
        .I2(\r_V_reg_130_reg[7] [6]),
        .I3(\r_V_reg_130_reg[7] [0]),
        .I4(\r_V_reg_130_reg[7] [1]),
        .O(\q0[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \q0[6]_i_1 
       (.I0(\r_V_reg_130_reg[7] [4]),
        .I1(\q0[6]_i_2_n_0 ),
        .I2(\r_V_reg_130_reg[7] [5]),
        .O(\q0[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55665666666A66AA)) 
    \q0[6]_i_2 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [1]),
        .O(\q0[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3088)) 
    \q0[7]_i_1 
       (.I0(\q0[7]_i_2_n_0 ),
        .I1(\r_V_reg_130_reg[7] [4]),
        .I2(\q0[7]_i_3_n_0 ),
        .I3(\r_V_reg_130_reg[7] [5]),
        .O(\q0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FE88EE80EE00)) 
    \q0[7]_i_2 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [1]),
        .O(\q0[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001777711117FFF)) 
    \q0[7]_i_3 
       (.I0(\r_V_reg_130_reg[7] [3]),
        .I1(\r_V_reg_130_reg[7] [2]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [0]),
        .I4(\r_V_reg_130_reg[7] [6]),
        .I5(\r_V_reg_130_reg[7] [1]),
        .O(\q0[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q0[8]_i_1 
       (.I0(\q0[8]_i_2_n_0 ),
        .I1(\q0[8]_i_3_n_0 ),
        .I2(\r_V_reg_130_reg[7] [4]),
        .I3(\q0[8]_i_4_n_0 ),
        .I4(\r_V_reg_130_reg[7] [5]),
        .I5(\q0[8]_i_5_n_0 ),
        .O(\q0[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70007000FF0000FF)) 
    \q0[8]_i_2 
       (.I0(\r_V_reg_130_reg[7] [2]),
        .I1(\r_V_reg_130_reg[7] [3]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [0]),
        .I5(\r_V_reg_130_reg[7] [6]),
        .O(\q0[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001550000)) 
    \q0[8]_i_3 
       (.I0(\r_V_reg_130_reg[7] [2]),
        .I1(\r_V_reg_130_reg[7] [7]),
        .I2(\r_V_reg_130_reg[7] [0]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [6]),
        .I5(\r_V_reg_130_reg[7] [3]),
        .O(\q0[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8000000000)) 
    \q0[8]_i_4 
       (.I0(\r_V_reg_130_reg[7] [2]),
        .I1(\r_V_reg_130_reg[7] [0]),
        .I2(\r_V_reg_130_reg[7] [7]),
        .I3(\r_V_reg_130_reg[7] [1]),
        .I4(\r_V_reg_130_reg[7] [6]),
        .I5(\r_V_reg_130_reg[7] [3]),
        .O(\q0[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC311)) 
    \q0[8]_i_5 
       (.I0(\r_V_reg_130_reg[7] [7]),
        .I1(\r_V_reg_130_reg[7] [1]),
        .I2(\r_V_reg_130_reg[7] [0]),
        .I3(\r_V_reg_130_reg[7] [6]),
        .O(\q0[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000001075E08A)) 
    \q0[9]_i_2 
       (.I0(\r_V_reg_130_reg[7] [1]),
        .I1(\r_V_reg_130_reg[7] [0]),
        .I2(\r_V_reg_130_reg[7] [6]),
        .I3(\r_V_reg_130_reg[7] [7]),
        .I4(\r_V_reg_130_reg[7] [2]),
        .I5(\r_V_reg_130_reg[7] [5]),
        .O(\q0[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5107AE0800000000)) 
    \q0[9]_i_3 
       (.I0(\r_V_reg_130_reg[7] [1]),
        .I1(\r_V_reg_130_reg[7] [0]),
        .I2(\r_V_reg_130_reg[7] [6]),
        .I3(\r_V_reg_130_reg[7] [7]),
        .I4(\r_V_reg_130_reg[7] [2]),
        .I5(\r_V_reg_130_reg[7] [5]),
        .O(\q0[9]_i_3_n_0 ));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[0]_i_1_n_0 ),
        .Q(video_out_TDATA[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[10]_i_1_n_0 ),
        .Q(video_out_TDATA[10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[11]_i_1_n_0 ),
        .Q(video_out_TDATA[11]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0_reg[1]_i_1_n_0 ),
        .Q(video_out_TDATA[1]),
        .R(1'b0));
  MUXF7 \q0_reg[1]_i_1 
       (.I0(\q0[1]_i_2_n_0 ),
        .I1(\q0[1]_i_3_n_0 ),
        .O(\q0_reg[1]_i_1_n_0 ),
        .S(\r_V_reg_130_reg[7] [4]));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[2]_i_1_n_0 ),
        .Q(video_out_TDATA[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[3]_i_1_n_0 ),
        .Q(video_out_TDATA[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[4]_i_1_n_0 ),
        .Q(video_out_TDATA[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[5]_i_1_n_0 ),
        .Q(video_out_TDATA[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[6]_i_1_n_0 ),
        .Q(video_out_TDATA[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[7]_i_1_n_0 ),
        .Q(video_out_TDATA[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0[8]_i_1_n_0 ),
        .Q(video_out_TDATA[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(Q),
        .D(\q0_reg[9]_i_1_n_0 ),
        .Q(video_out_TDATA[9]),
        .R(1'b0));
  MUXF7 \q0_reg[9]_i_1 
       (.I0(\q0[9]_i_2_n_0 ),
        .I1(\q0[9]_i_3_n_0 ),
        .O(\q0_reg[9]_i_1_n_0 ),
        .S(\r_V_reg_130_reg[7] [4]));
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
