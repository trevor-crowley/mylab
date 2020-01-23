// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="myloop,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a200tfbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=13.028000,HLS_SYN_LAT=142,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=316,HLS_SYN_LUT=767}" *)

module myloop (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_V,
        b_V,
        outp_V_TDATA,
        outp_V_TVALID,
        outp_V_TREADY
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_pp0_stage0 = 10'd2;
parameter    ap_ST_fsm_pp0_stage1 = 10'd4;
parameter    ap_ST_fsm_pp0_stage2 = 10'd8;
parameter    ap_ST_fsm_pp0_stage3 = 10'd16;
parameter    ap_ST_fsm_pp0_stage4 = 10'd32;
parameter    ap_ST_fsm_pp0_stage5 = 10'd64;
parameter    ap_ST_fsm_pp0_stage6 = 10'd128;
parameter    ap_ST_fsm_pp0_stage7 = 10'd256;
parameter    ap_ST_fsm_state11 = 10'd512;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] a_V;
input  [7:0] b_V;
output  [15:0] outp_V_TDATA;
output   outp_V_TVALID;
input   outp_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg outp_V_TVALID;

reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    outp_V_TDATA_blk_n;
wire    ap_CS_fsm_state11;
reg   [31:0] val_assign_reg_87;
reg   [15:0] i_reg_99;
wire   [0:0] exitcond_fu_128_p2;
reg   [0:0] exitcond_reg_275;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond_1_fu_140_p2;
reg   [0:0] exitcond_1_reg_279;
wire   [31:0] grp_fu_121_p2;
wire    ap_CS_fsm_pp0_stage4;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state6_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
wire   [15:0] i_1_1_fu_146_p2;
reg   [15:0] i_1_1_reg_289;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_state9_pp0_stage7_iter0;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage4_subdone;
reg    ap_predicate_tran6to11_state6;
reg    ap_condition_pp0_exit_iter0_state6;
wire    ap_block_pp0_stage7_subdone;
reg   [31:0] ap_phi_mux_val_assign_phi_fu_91_p4;
wire    ap_block_pp0_stage0;
reg   [15:0] ap_phi_mux_i_phi_fu_103_p4;
reg   [31:0] x_assign_reg_111;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg    ap_reg_ioackin_outp_V_TREADY;
reg    ap_sig_ioackin_outp_V_TREADY;
reg   [31:0] grp_fu_121_p0;
wire    ap_block_pp0_stage4;
wire   [15:0] i_1_s_fu_134_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] p_Val2_s_fu_152_p1;
wire   [22:0] loc_V_1_fu_166_p1;
wire   [24:0] tmp_4_i_i_i_fu_170_p4;
wire   [7:0] loc_V_fu_156_p4;
wire   [8:0] tmp_i_i_i_i_cast1_fu_184_p1;
wire   [8:0] sh_assign_fu_188_p2;
wire   [7:0] tmp_6_i_i_i_fu_202_p2;
wire   [0:0] isNeg_fu_194_p3;
wire  signed [8:0] tmp_6_i_i_i_cast_fu_208_p1;
wire   [8:0] sh_assign_1_fu_212_p3;
wire  signed [31:0] sh_assign_1_cast_fu_220_p1;
wire  signed [24:0] sh_assign_1_cast_cas_fu_224_p1;
wire   [62:0] tmp_4_i_i_i_cast2_fu_180_p1;
wire   [62:0] tmp_8_i_i_i_fu_228_p1;
wire   [24:0] tmp_9_i_i_i_fu_232_p2;
wire   [0:0] tmp_6_fu_244_p3;
wire   [62:0] tmp_1_i_i_i_fu_238_p2;
wire   [15:0] tmp_3_fu_252_p1;
wire   [15:0] tmp_4_fu_256_p4;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_state5_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_state7_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_state8_pp0_stage6_iter0;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage6_11001;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_339;
reg    ap_condition_344;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_reg_ioackin_outp_V_TREADY = 1'b0;
end

myloop_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
myloop_fadd_32ns_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_121_p0),
    .din1(32'd1065353216),
    .ce(1'b1),
    .dout(grp_fu_121_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b1 == ap_condition_pp0_exit_iter0_state6) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state6) & (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state6);
        end else if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_outp_V_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            if ((ap_sig_ioackin_outp_V_TREADY == 1'b1)) begin
                ap_reg_ioackin_outp_V_TREADY <= 1'b0;
            end else if ((outp_V_TREADY == 1'b1)) begin
                ap_reg_ioackin_outp_V_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_1_reg_279 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_reg_275 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_99 <= i_1_1_reg_289;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_99 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_1_reg_279 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (exitcond_reg_275 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        val_assign_reg_87 <= grp_fu_121_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        val_assign_reg_87 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_344)) begin
            x_assign_reg_111 <= grp_fu_121_p2;
        end else if ((1'b1 == ap_condition_339)) begin
            x_assign_reg_111 <= val_assign_reg_87;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_1_reg_279 <= exitcond_1_fu_140_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_reg_275 <= exitcond_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (exitcond_1_reg_279 == 1'd0) & (exitcond_reg_275 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_1_1_reg_289 <= i_1_1_fu_146_p2;
    end
end

always @ (*) begin
    if ((ap_predicate_tran6to11_state6 == 1'b1)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_sig_ioackin_outp_V_TREADY == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_1_reg_279 == 1'd0) & (exitcond_reg_275 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_103_p4 = i_1_1_reg_289;
    end else begin
        ap_phi_mux_i_phi_fu_103_p4 = i_reg_99;
    end
end

always @ (*) begin
    if (((exitcond_1_reg_279 == 1'd0) & (exitcond_reg_275 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_val_assign_phi_fu_91_p4 = grp_fu_121_p2;
    end else begin
        ap_phi_mux_val_assign_phi_fu_91_p4 = val_assign_reg_87;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_sig_ioackin_outp_V_TREADY == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_outp_V_TREADY == 1'b0)) begin
        ap_sig_ioackin_outp_V_TREADY = outp_V_TREADY;
    end else begin
        ap_sig_ioackin_outp_V_TREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_121_p0 = grp_fu_121_p2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            grp_fu_121_p0 = ap_phi_mux_val_assign_phi_fu_91_p4;
        end else begin
            grp_fu_121_p0 = 'bx;
        end
    end else begin
        grp_fu_121_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        outp_V_TDATA_blk_n = outp_V_TREADY;
    end else begin
        outp_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_outp_V_TREADY == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
        outp_V_TVALID = 1'b1;
    end else begin
        outp_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((~((ap_predicate_tran6to11_state6 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone)) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else if (((ap_predicate_tran6to11_state6 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (ap_sig_ioackin_outp_V_TREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage7_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_339 = ((exitcond_reg_275 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001));
end

always @ (*) begin
    ap_condition_344 = ((1'b0 == ap_block_pp0_stage4_11001) & (exitcond_1_reg_279 == 1'd1) & (exitcond_reg_275 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_tran6to11_state6 = ((exitcond_reg_275 == 1'd1) | ((exitcond_1_reg_279 == 1'd1) & (exitcond_reg_275 == 1'd0)));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond_1_fu_140_p2 = ((i_1_s_fu_134_p2 == 16'd33) ? 1'b1 : 1'b0);

assign exitcond_fu_128_p2 = ((ap_phi_mux_i_phi_fu_103_p4 == 16'd33) ? 1'b1 : 1'b0);

assign i_1_1_fu_146_p2 = (i_reg_99 + 16'd2);

assign i_1_s_fu_134_p2 = (ap_phi_mux_i_phi_fu_103_p4 | 16'd1);

assign isNeg_fu_194_p3 = sh_assign_fu_188_p2[32'd8];

assign loc_V_1_fu_166_p1 = p_Val2_s_fu_152_p1[22:0];

assign loc_V_fu_156_p4 = {{p_Val2_s_fu_152_p1[30:23]}};

assign outp_V_TDATA = ((isNeg_fu_194_p3[0:0] === 1'b1) ? tmp_3_fu_252_p1 : tmp_4_fu_256_p4);

assign p_Val2_s_fu_152_p1 = x_assign_reg_111;

assign sh_assign_1_cast_cas_fu_224_p1 = $signed(sh_assign_1_fu_212_p3);

assign sh_assign_1_cast_fu_220_p1 = $signed(sh_assign_1_fu_212_p3);

assign sh_assign_1_fu_212_p3 = ((isNeg_fu_194_p3[0:0] === 1'b1) ? tmp_6_i_i_i_cast_fu_208_p1 : sh_assign_fu_188_p2);

assign sh_assign_fu_188_p2 = ($signed(9'd385) + $signed(tmp_i_i_i_i_cast1_fu_184_p1));

assign tmp_1_i_i_i_fu_238_p2 = tmp_4_i_i_i_cast2_fu_180_p1 << tmp_8_i_i_i_fu_228_p1;

assign tmp_3_fu_252_p1 = tmp_6_fu_244_p3;

assign tmp_4_fu_256_p4 = {{tmp_1_i_i_i_fu_238_p2[39:24]}};

assign tmp_4_i_i_i_cast2_fu_180_p1 = tmp_4_i_i_i_fu_170_p4;

assign tmp_4_i_i_i_fu_170_p4 = {{{{1'd1}, {loc_V_1_fu_166_p1}}}, {1'd0}};

assign tmp_6_fu_244_p3 = tmp_9_i_i_i_fu_232_p2[32'd24];

assign tmp_6_i_i_i_cast_fu_208_p1 = $signed(tmp_6_i_i_i_fu_202_p2);

assign tmp_6_i_i_i_fu_202_p2 = (8'd127 - loc_V_fu_156_p4);

assign tmp_8_i_i_i_fu_228_p1 = $unsigned(sh_assign_1_cast_fu_220_p1);

assign tmp_9_i_i_i_fu_232_p2 = tmp_4_i_i_i_fu_170_p4 >> sh_assign_1_cast_cas_fu_224_p1;

assign tmp_i_i_i_i_cast1_fu_184_p1 = loc_V_fu_156_p4;

endmodule //myloop