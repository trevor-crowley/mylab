// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Mar  5 00:02:36 2018
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 450000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) output [0:0]video_out_TID;

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
  wire ap_ready_INST_0_i_1_n_0;
  wire ap_reg_ioackin_video_out_TREADY;
  wire ap_reg_ioackin_video_out_TREADY_i_1_n_0;
  wire ap_rst_n;
  wire ap_start;
  wire phi_mul_reg_1140;
  wire phi_mul_reg_11404_out;
  wire \phi_mul_reg_114[11]_i_2_n_0 ;
  wire \phi_mul_reg_114[3]_i_2_n_0 ;
  wire \phi_mul_reg_114[3]_i_3_n_0 ;
  wire \phi_mul_reg_114[3]_i_4_n_0 ;
  wire \phi_mul_reg_114[3]_i_5_n_0 ;
  wire \phi_mul_reg_114[7]_i_2_n_0 ;
  wire \phi_mul_reg_114[7]_i_3_n_0 ;
  wire \phi_mul_reg_114[7]_i_4_n_0 ;
  wire \phi_mul_reg_114[7]_i_5_n_0 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_0 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_1 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_2 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_3 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_4 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_5 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_6 ;
  wire \phi_mul_reg_114_reg[11]_i_1_n_7 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_0 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_1 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_2 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_3 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_4 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_5 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_6 ;
  wire \phi_mul_reg_114_reg[15]_i_1_n_7 ;
  wire \phi_mul_reg_114_reg[18]_i_3_n_2 ;
  wire \phi_mul_reg_114_reg[18]_i_3_n_3 ;
  wire \phi_mul_reg_114_reg[18]_i_3_n_5 ;
  wire \phi_mul_reg_114_reg[18]_i_3_n_6 ;
  wire \phi_mul_reg_114_reg[18]_i_3_n_7 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_0 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_1 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_2 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_3 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_4 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_5 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_6 ;
  wire \phi_mul_reg_114_reg[3]_i_1_n_7 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_0 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_1 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_2 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_3 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_4 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_5 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_6 ;
  wire \phi_mul_reg_114_reg[7]_i_1_n_7 ;
  wire [18:0]\^video_out_TDATA ;
  wire [0:0]video_out_TLAST;
  wire \video_out_TLAST[0]_INST_0_i_1_n_0 ;
  wire video_out_TREADY;
  wire [0:0]video_out_TUSER;
  wire \video_out_TUSER[0]_INST_0_i_1_n_0 ;
  wire \video_out_TUSER[0]_INST_0_i_2_n_0 ;
  wire video_out_TVALID;
  wire video_out_TVALID_INST_0_i_1_n_0;
  wire [9:0]x_1_fu_147_p2;
  wire [9:0]x_reg_103_reg__0;
  wire [8:0]y_1_fu_135_p2;
  wire [8:0]y_1_reg_211;
  wire \y_1_reg_211[8]_i_2_n_0 ;
  wire [8:0]y_cast2_reg_203_reg__0;
  wire y_reg_91;
  wire \y_reg_91_reg_n_0_[0] ;
  wire \y_reg_91_reg_n_0_[1] ;
  wire \y_reg_91_reg_n_0_[2] ;
  wire \y_reg_91_reg_n_0_[3] ;
  wire \y_reg_91_reg_n_0_[4] ;
  wire \y_reg_91_reg_n_0_[5] ;
  wire \y_reg_91_reg_n_0_[6] ;
  wire \y_reg_91_reg_n_0_[7] ;
  wire \y_reg_91_reg_n_0_[8] ;
  wire [3:2]\NLW_phi_mul_reg_114_reg[18]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_phi_mul_reg_114_reg[18]_i_3_O_UNCONNECTED ;

  assign ap_ready = ap_done;
  assign video_out_TDATA[23] = \<const0> ;
  assign video_out_TDATA[22] = \<const0> ;
  assign video_out_TDATA[21] = \<const0> ;
  assign video_out_TDATA[20] = \<const0> ;
  assign video_out_TDATA[19] = \<const0> ;
  assign video_out_TDATA[18:0] = \^video_out_TDATA [18:0];
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
        .I1(\y_reg_91_reg_n_0_[7] ),
        .I2(\y_reg_91_reg_n_0_[6] ),
        .I3(\y_reg_91_reg_n_0_[5] ),
        .I4(\y_reg_91_reg_n_0_[8] ),
        .I5(ap_ready_INST_0_i_1_n_0),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ap_ready_INST_0_i_1
       (.I0(\y_reg_91_reg_n_0_[0] ),
        .I1(\y_reg_91_reg_n_0_[1] ),
        .I2(\y_reg_91_reg_n_0_[4] ),
        .I3(\y_reg_91_reg_n_0_[3] ),
        .I4(\y_reg_91_reg_n_0_[2] ),
        .O(ap_ready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_reg_ioackin_video_out_TREADY_i_1
       (.I0(ap_rst_n),
        .I1(ap_reg_ioackin_video_out_TREADY),
        .I2(video_out_TVALID_INST_0_i_1_n_0),
        .O(ap_reg_ioackin_video_out_TREADY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_video_out_TREADY_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_video_out_TREADY_i_1_n_0),
        .Q(ap_reg_ioackin_video_out_TREADY),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[11]_i_2 
       (.I0(y_cast2_reg_203_reg__0[8]),
        .I1(\^video_out_TDATA [8]),
        .O(\phi_mul_reg_114[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \phi_mul_reg_114[18]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\y_reg_91_reg_n_0_[7] ),
        .I2(\y_reg_91_reg_n_0_[6] ),
        .I3(\y_reg_91_reg_n_0_[5] ),
        .I4(\y_reg_91_reg_n_0_[8] ),
        .I5(ap_ready_INST_0_i_1_n_0),
        .O(phi_mul_reg_1140));
  LUT3 #(
    .INIT(8'h54)) 
    \phi_mul_reg_114[18]_i_2 
       (.I0(video_out_TVALID_INST_0_i_1_n_0),
        .I1(ap_reg_ioackin_video_out_TREADY),
        .I2(video_out_TREADY),
        .O(phi_mul_reg_11404_out));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[3]_i_2 
       (.I0(y_cast2_reg_203_reg__0[3]),
        .I1(\^video_out_TDATA [3]),
        .O(\phi_mul_reg_114[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[3]_i_3 
       (.I0(y_cast2_reg_203_reg__0[2]),
        .I1(\^video_out_TDATA [2]),
        .O(\phi_mul_reg_114[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[3]_i_4 
       (.I0(y_cast2_reg_203_reg__0[1]),
        .I1(\^video_out_TDATA [1]),
        .O(\phi_mul_reg_114[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[3]_i_5 
       (.I0(y_cast2_reg_203_reg__0[0]),
        .I1(\^video_out_TDATA [0]),
        .O(\phi_mul_reg_114[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[7]_i_2 
       (.I0(y_cast2_reg_203_reg__0[7]),
        .I1(\^video_out_TDATA [7]),
        .O(\phi_mul_reg_114[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[7]_i_3 
       (.I0(y_cast2_reg_203_reg__0[6]),
        .I1(\^video_out_TDATA [6]),
        .O(\phi_mul_reg_114[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[7]_i_4 
       (.I0(y_cast2_reg_203_reg__0[5]),
        .I1(\^video_out_TDATA [5]),
        .O(\phi_mul_reg_114[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phi_mul_reg_114[7]_i_5 
       (.I0(y_cast2_reg_203_reg__0[4]),
        .I1(\^video_out_TDATA [4]),
        .O(\phi_mul_reg_114[7]_i_5_n_0 ));
  FDRE \phi_mul_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[3]_i_1_n_7 ),
        .Q(\^video_out_TDATA [0]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[10] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[11]_i_1_n_5 ),
        .Q(\^video_out_TDATA [10]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[11] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[11]_i_1_n_4 ),
        .Q(\^video_out_TDATA [11]),
        .R(phi_mul_reg_1140));
  CARRY4 \phi_mul_reg_114_reg[11]_i_1 
       (.CI(\phi_mul_reg_114_reg[7]_i_1_n_0 ),
        .CO({\phi_mul_reg_114_reg[11]_i_1_n_0 ,\phi_mul_reg_114_reg[11]_i_1_n_1 ,\phi_mul_reg_114_reg[11]_i_1_n_2 ,\phi_mul_reg_114_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,y_cast2_reg_203_reg__0[8]}),
        .O({\phi_mul_reg_114_reg[11]_i_1_n_4 ,\phi_mul_reg_114_reg[11]_i_1_n_5 ,\phi_mul_reg_114_reg[11]_i_1_n_6 ,\phi_mul_reg_114_reg[11]_i_1_n_7 }),
        .S({\^video_out_TDATA [11:9],\phi_mul_reg_114[11]_i_2_n_0 }));
  FDRE \phi_mul_reg_114_reg[12] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[15]_i_1_n_7 ),
        .Q(\^video_out_TDATA [12]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[13] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[15]_i_1_n_6 ),
        .Q(\^video_out_TDATA [13]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[14] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[15]_i_1_n_5 ),
        .Q(\^video_out_TDATA [14]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[15] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[15]_i_1_n_4 ),
        .Q(\^video_out_TDATA [15]),
        .R(phi_mul_reg_1140));
  CARRY4 \phi_mul_reg_114_reg[15]_i_1 
       (.CI(\phi_mul_reg_114_reg[11]_i_1_n_0 ),
        .CO({\phi_mul_reg_114_reg[15]_i_1_n_0 ,\phi_mul_reg_114_reg[15]_i_1_n_1 ,\phi_mul_reg_114_reg[15]_i_1_n_2 ,\phi_mul_reg_114_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_mul_reg_114_reg[15]_i_1_n_4 ,\phi_mul_reg_114_reg[15]_i_1_n_5 ,\phi_mul_reg_114_reg[15]_i_1_n_6 ,\phi_mul_reg_114_reg[15]_i_1_n_7 }),
        .S(\^video_out_TDATA [15:12]));
  FDRE \phi_mul_reg_114_reg[16] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[18]_i_3_n_7 ),
        .Q(\^video_out_TDATA [16]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[17] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[18]_i_3_n_6 ),
        .Q(\^video_out_TDATA [17]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[18] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[18]_i_3_n_5 ),
        .Q(\^video_out_TDATA [18]),
        .R(phi_mul_reg_1140));
  CARRY4 \phi_mul_reg_114_reg[18]_i_3 
       (.CI(\phi_mul_reg_114_reg[15]_i_1_n_0 ),
        .CO({\NLW_phi_mul_reg_114_reg[18]_i_3_CO_UNCONNECTED [3:2],\phi_mul_reg_114_reg[18]_i_3_n_2 ,\phi_mul_reg_114_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_mul_reg_114_reg[18]_i_3_O_UNCONNECTED [3],\phi_mul_reg_114_reg[18]_i_3_n_5 ,\phi_mul_reg_114_reg[18]_i_3_n_6 ,\phi_mul_reg_114_reg[18]_i_3_n_7 }),
        .S({1'b0,\^video_out_TDATA [18:16]}));
  FDRE \phi_mul_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[3]_i_1_n_6 ),
        .Q(\^video_out_TDATA [1]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[3]_i_1_n_5 ),
        .Q(\^video_out_TDATA [2]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[3]_i_1_n_4 ),
        .Q(\^video_out_TDATA [3]),
        .R(phi_mul_reg_1140));
  CARRY4 \phi_mul_reg_114_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\phi_mul_reg_114_reg[3]_i_1_n_0 ,\phi_mul_reg_114_reg[3]_i_1_n_1 ,\phi_mul_reg_114_reg[3]_i_1_n_2 ,\phi_mul_reg_114_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_cast2_reg_203_reg__0[3:0]),
        .O({\phi_mul_reg_114_reg[3]_i_1_n_4 ,\phi_mul_reg_114_reg[3]_i_1_n_5 ,\phi_mul_reg_114_reg[3]_i_1_n_6 ,\phi_mul_reg_114_reg[3]_i_1_n_7 }),
        .S({\phi_mul_reg_114[3]_i_2_n_0 ,\phi_mul_reg_114[3]_i_3_n_0 ,\phi_mul_reg_114[3]_i_4_n_0 ,\phi_mul_reg_114[3]_i_5_n_0 }));
  FDRE \phi_mul_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[7]_i_1_n_7 ),
        .Q(\^video_out_TDATA [4]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[5] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[7]_i_1_n_6 ),
        .Q(\^video_out_TDATA [5]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[6] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[7]_i_1_n_5 ),
        .Q(\^video_out_TDATA [6]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[7] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[7]_i_1_n_4 ),
        .Q(\^video_out_TDATA [7]),
        .R(phi_mul_reg_1140));
  CARRY4 \phi_mul_reg_114_reg[7]_i_1 
       (.CI(\phi_mul_reg_114_reg[3]_i_1_n_0 ),
        .CO({\phi_mul_reg_114_reg[7]_i_1_n_0 ,\phi_mul_reg_114_reg[7]_i_1_n_1 ,\phi_mul_reg_114_reg[7]_i_1_n_2 ,\phi_mul_reg_114_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(y_cast2_reg_203_reg__0[7:4]),
        .O({\phi_mul_reg_114_reg[7]_i_1_n_4 ,\phi_mul_reg_114_reg[7]_i_1_n_5 ,\phi_mul_reg_114_reg[7]_i_1_n_6 ,\phi_mul_reg_114_reg[7]_i_1_n_7 }),
        .S({\phi_mul_reg_114[7]_i_2_n_0 ,\phi_mul_reg_114[7]_i_3_n_0 ,\phi_mul_reg_114[7]_i_4_n_0 ,\phi_mul_reg_114[7]_i_5_n_0 }));
  FDRE \phi_mul_reg_114_reg[8] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[11]_i_1_n_7 ),
        .Q(\^video_out_TDATA [8]),
        .R(phi_mul_reg_1140));
  FDRE \phi_mul_reg_114_reg[9] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(\phi_mul_reg_114_reg[11]_i_1_n_6 ),
        .Q(\^video_out_TDATA [9]),
        .R(phi_mul_reg_1140));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \video_out_TLAST[0]_INST_0 
       (.I0(x_reg_103_reg__0[7]),
        .I1(x_reg_103_reg__0[6]),
        .I2(\video_out_TLAST[0]_INST_0_i_1_n_0 ),
        .I3(x_reg_103_reg__0[5]),
        .I4(x_reg_103_reg__0[9]),
        .I5(x_reg_103_reg__0[8]),
        .O(video_out_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \video_out_TLAST[0]_INST_0_i_1 
       (.I0(x_reg_103_reg__0[4]),
        .I1(x_reg_103_reg__0[3]),
        .I2(x_reg_103_reg__0[0]),
        .I3(x_reg_103_reg__0[1]),
        .I4(x_reg_103_reg__0[2]),
        .O(\video_out_TLAST[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \video_out_TUSER[0]_INST_0 
       (.I0(\y_reg_91_reg_n_0_[6] ),
        .I1(\y_reg_91_reg_n_0_[5] ),
        .I2(\video_out_TUSER[0]_INST_0_i_1_n_0 ),
        .I3(\video_out_TUSER[0]_INST_0_i_2_n_0 ),
        .I4(ap_ready_INST_0_i_1_n_0),
        .O(video_out_TUSER));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \video_out_TUSER[0]_INST_0_i_1 
       (.I0(x_reg_103_reg__0[0]),
        .I1(x_reg_103_reg__0[1]),
        .I2(x_reg_103_reg__0[5]),
        .I3(x_reg_103_reg__0[4]),
        .I4(x_reg_103_reg__0[3]),
        .I5(x_reg_103_reg__0[2]),
        .O(\video_out_TUSER[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \video_out_TUSER[0]_INST_0_i_2 
       (.I0(x_reg_103_reg__0[7]),
        .I1(\y_reg_91_reg_n_0_[8] ),
        .I2(x_reg_103_reg__0[6]),
        .I3(\y_reg_91_reg_n_0_[7] ),
        .I4(x_reg_103_reg__0[8]),
        .I5(x_reg_103_reg__0[9]),
        .O(\video_out_TUSER[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    video_out_TVALID_INST_0
       (.I0(ap_reg_ioackin_video_out_TREADY),
        .I1(video_out_TVALID_INST_0_i_1_n_0),
        .O(video_out_TVALID));
  LUT6 #(
    .INIT(64'h5555555555D55555)) 
    video_out_TVALID_INST_0_i_1
       (.I0(ap_CS_fsm_state3),
        .I1(\video_out_TUSER[0]_INST_0_i_1_n_0 ),
        .I2(x_reg_103_reg__0[9]),
        .I3(x_reg_103_reg__0[8]),
        .I4(x_reg_103_reg__0[7]),
        .I5(x_reg_103_reg__0[6]),
        .O(video_out_TVALID_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_reg_103[0]_i_1 
       (.I0(x_reg_103_reg__0[0]),
        .O(x_1_fu_147_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_reg_103[1]_i_1 
       (.I0(x_reg_103_reg__0[1]),
        .I1(x_reg_103_reg__0[0]),
        .O(x_1_fu_147_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x_reg_103[2]_i_1 
       (.I0(x_reg_103_reg__0[2]),
        .I1(x_reg_103_reg__0[1]),
        .I2(x_reg_103_reg__0[0]),
        .O(x_1_fu_147_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x_reg_103[3]_i_1 
       (.I0(x_reg_103_reg__0[3]),
        .I1(x_reg_103_reg__0[0]),
        .I2(x_reg_103_reg__0[1]),
        .I3(x_reg_103_reg__0[2]),
        .O(x_1_fu_147_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_reg_103[4]_i_1 
       (.I0(x_reg_103_reg__0[2]),
        .I1(x_reg_103_reg__0[1]),
        .I2(x_reg_103_reg__0[0]),
        .I3(x_reg_103_reg__0[3]),
        .I4(x_reg_103_reg__0[4]),
        .O(x_1_fu_147_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x_reg_103[5]_i_1 
       (.I0(x_reg_103_reg__0[5]),
        .I1(x_reg_103_reg__0[2]),
        .I2(x_reg_103_reg__0[1]),
        .I3(x_reg_103_reg__0[0]),
        .I4(x_reg_103_reg__0[3]),
        .I5(x_reg_103_reg__0[4]),
        .O(x_1_fu_147_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \x_reg_103[6]_i_1 
       (.I0(x_reg_103_reg__0[6]),
        .I1(\video_out_TLAST[0]_INST_0_i_1_n_0 ),
        .I2(x_reg_103_reg__0[5]),
        .O(x_1_fu_147_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x_reg_103[7]_i_1 
       (.I0(x_reg_103_reg__0[7]),
        .I1(x_reg_103_reg__0[5]),
        .I2(\video_out_TLAST[0]_INST_0_i_1_n_0 ),
        .I3(x_reg_103_reg__0[6]),
        .O(x_1_fu_147_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x_reg_103[8]_i_1 
       (.I0(x_reg_103_reg__0[8]),
        .I1(x_reg_103_reg__0[6]),
        .I2(\video_out_TLAST[0]_INST_0_i_1_n_0 ),
        .I3(x_reg_103_reg__0[5]),
        .I4(x_reg_103_reg__0[7]),
        .O(x_1_fu_147_p2[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x_reg_103[9]_i_1 
       (.I0(x_reg_103_reg__0[9]),
        .I1(x_reg_103_reg__0[7]),
        .I2(x_reg_103_reg__0[5]),
        .I3(\video_out_TLAST[0]_INST_0_i_1_n_0 ),
        .I4(x_reg_103_reg__0[6]),
        .I5(x_reg_103_reg__0[8]),
        .O(x_1_fu_147_p2[9]));
  FDRE \x_reg_103_reg[0] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[0]),
        .Q(x_reg_103_reg__0[0]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[1] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[1]),
        .Q(x_reg_103_reg__0[1]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[2] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[2]),
        .Q(x_reg_103_reg__0[2]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[3] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[3]),
        .Q(x_reg_103_reg__0[3]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[4] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[4]),
        .Q(x_reg_103_reg__0[4]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[5] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[5]),
        .Q(x_reg_103_reg__0[5]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[6] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[6]),
        .Q(x_reg_103_reg__0[6]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[7] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[7]),
        .Q(x_reg_103_reg__0[7]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[8] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[8]),
        .Q(x_reg_103_reg__0[8]),
        .R(phi_mul_reg_1140));
  FDRE \x_reg_103_reg[9] 
       (.C(ap_clk),
        .CE(phi_mul_reg_11404_out),
        .D(x_1_fu_147_p2[9]),
        .Q(x_reg_103_reg__0[9]),
        .R(phi_mul_reg_1140));
  LUT1 #(
    .INIT(2'h1)) 
    \y_1_reg_211[0]_i_1 
       (.I0(\y_reg_91_reg_n_0_[0] ),
        .O(y_1_fu_135_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_1_reg_211[1]_i_1 
       (.I0(\y_reg_91_reg_n_0_[1] ),
        .I1(\y_reg_91_reg_n_0_[0] ),
        .O(y_1_fu_135_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \y_1_reg_211[2]_i_1 
       (.I0(\y_reg_91_reg_n_0_[2] ),
        .I1(\y_reg_91_reg_n_0_[1] ),
        .I2(\y_reg_91_reg_n_0_[0] ),
        .O(y_1_fu_135_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_1_reg_211[3]_i_1 
       (.I0(\y_reg_91_reg_n_0_[3] ),
        .I1(\y_reg_91_reg_n_0_[0] ),
        .I2(\y_reg_91_reg_n_0_[1] ),
        .I3(\y_reg_91_reg_n_0_[2] ),
        .O(y_1_fu_135_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_1_reg_211[4]_i_1 
       (.I0(\y_reg_91_reg_n_0_[2] ),
        .I1(\y_reg_91_reg_n_0_[1] ),
        .I2(\y_reg_91_reg_n_0_[0] ),
        .I3(\y_reg_91_reg_n_0_[3] ),
        .I4(\y_reg_91_reg_n_0_[4] ),
        .O(y_1_fu_135_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \y_1_reg_211[5]_i_1 
       (.I0(\y_reg_91_reg_n_0_[5] ),
        .I1(\y_reg_91_reg_n_0_[2] ),
        .I2(\y_reg_91_reg_n_0_[1] ),
        .I3(\y_reg_91_reg_n_0_[0] ),
        .I4(\y_reg_91_reg_n_0_[3] ),
        .I5(\y_reg_91_reg_n_0_[4] ),
        .O(y_1_fu_135_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \y_1_reg_211[6]_i_1 
       (.I0(\y_reg_91_reg_n_0_[6] ),
        .I1(\y_1_reg_211[8]_i_2_n_0 ),
        .I2(\y_reg_91_reg_n_0_[5] ),
        .O(y_1_fu_135_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_1_reg_211[7]_i_1 
       (.I0(\y_reg_91_reg_n_0_[7] ),
        .I1(\y_reg_91_reg_n_0_[6] ),
        .I2(\y_reg_91_reg_n_0_[5] ),
        .I3(\y_1_reg_211[8]_i_2_n_0 ),
        .O(y_1_fu_135_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \y_1_reg_211[8]_i_1 
       (.I0(\y_reg_91_reg_n_0_[8] ),
        .I1(\y_reg_91_reg_n_0_[5] ),
        .I2(\y_reg_91_reg_n_0_[6] ),
        .I3(\y_reg_91_reg_n_0_[7] ),
        .I4(\y_1_reg_211[8]_i_2_n_0 ),
        .O(y_1_fu_135_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \y_1_reg_211[8]_i_2 
       (.I0(\y_reg_91_reg_n_0_[4] ),
        .I1(\y_reg_91_reg_n_0_[3] ),
        .I2(\y_reg_91_reg_n_0_[0] ),
        .I3(\y_reg_91_reg_n_0_[1] ),
        .I4(\y_reg_91_reg_n_0_[2] ),
        .O(\y_1_reg_211[8]_i_2_n_0 ));
  FDRE \y_1_reg_211_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[0]),
        .Q(y_1_reg_211[0]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[1]),
        .Q(y_1_reg_211[1]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[2]),
        .Q(y_1_reg_211[2]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[3]),
        .Q(y_1_reg_211[3]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[4]),
        .Q(y_1_reg_211[4]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[5]),
        .Q(y_1_reg_211[5]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[6]),
        .Q(y_1_reg_211[6]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[7]),
        .Q(y_1_reg_211[7]),
        .R(1'b0));
  FDRE \y_1_reg_211_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(y_1_fu_135_p2[8]),
        .Q(y_1_reg_211[8]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[0] ),
        .Q(y_cast2_reg_203_reg__0[0]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[1] ),
        .Q(y_cast2_reg_203_reg__0[1]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[2] ),
        .Q(y_cast2_reg_203_reg__0[2]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[3] ),
        .Q(y_cast2_reg_203_reg__0[3]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[4] ),
        .Q(y_cast2_reg_203_reg__0[4]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[5] ),
        .Q(y_cast2_reg_203_reg__0[5]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[6] ),
        .Q(y_cast2_reg_203_reg__0[6]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[7] ),
        .Q(y_cast2_reg_203_reg__0[7]),
        .R(1'b0));
  FDRE \y_cast2_reg_203_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\y_reg_91_reg_n_0_[8] ),
        .Q(y_cast2_reg_203_reg__0[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \y_reg_91[8]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_NS_fsm1),
        .O(y_reg_91));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \y_reg_91[8]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(\video_out_TUSER[0]_INST_0_i_1_n_0 ),
        .I2(x_reg_103_reg__0[9]),
        .I3(x_reg_103_reg__0[8]),
        .I4(x_reg_103_reg__0[7]),
        .I5(x_reg_103_reg__0[6]),
        .O(ap_NS_fsm1));
  FDRE \y_reg_91_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[0]),
        .Q(\y_reg_91_reg_n_0_[0] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[1]),
        .Q(\y_reg_91_reg_n_0_[1] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[2]),
        .Q(\y_reg_91_reg_n_0_[2] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[3]),
        .Q(\y_reg_91_reg_n_0_[3] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[4]),
        .Q(\y_reg_91_reg_n_0_[4] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[5]),
        .Q(\y_reg_91_reg_n_0_[5] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[6]),
        .Q(\y_reg_91_reg_n_0_[6] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[7]),
        .Q(\y_reg_91_reg_n_0_[7] ),
        .R(y_reg_91));
  FDRE \y_reg_91_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_1_reg_211[8]),
        .Q(\y_reg_91_reg_n_0_[8] ),
        .R(y_reg_91));
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
