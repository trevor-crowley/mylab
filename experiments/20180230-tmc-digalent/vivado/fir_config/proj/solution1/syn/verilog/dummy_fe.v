// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dummy_fe (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_V_dout,
        in_V_empty_n,
        in_V_read,
        out_V_din,
        out_V_full_n,
        out_V_write,
        config_out_V_din,
        config_out_V_full_n,
        config_out_V_write,
        config_in_V
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] in_V_dout;
input   in_V_empty_n;
output   in_V_read;
output  [15:0] out_V_din;
input   out_V_full_n;
output   out_V_write;
output  [7:0] config_out_V_din;
input   config_out_V_full_n;
output   config_out_V_write;
input  [7:0] config_in_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_read;
reg out_V_write;
reg config_out_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_fu_145_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_block_state2_pp0_stage0_iter0;
reg   [0:0] do_init_reg_109;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_11001;
reg    in_V_blk_n;
wire    ap_block_pp0_stage0;
reg    out_V_blk_n;
reg    config_out_V_blk_n;
reg   [4:0] i1_reg_125;
reg   [7:0] config_in_V_read_reg_153;
reg   [0:0] ap_phi_mux_do_init_phi_fu_113_p6;
wire   [4:0] i_fu_139_p2;
reg   [4:0] i_reg_158;
reg   [0:0] tmp_reg_163;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [4:0] ap_phi_mux_i1_phi_fu_129_p6;
reg    ap_block_pp0_stage0_01001;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_78;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_163 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_163 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        do_init_reg_109 <= 1'd0;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_163 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        do_init_reg_109 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_163 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i1_reg_125 <= i_reg_158;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_163 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        i1_reg_125 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_do_init_phi_fu_113_p6 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        config_in_V_read_reg_153 <= config_in_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_158 <= i_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_163 <= tmp_fu_145_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_163 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_78)) begin
        if ((tmp_reg_163 == 1'd1)) begin
            ap_phi_mux_do_init_phi_fu_113_p6 = 1'd1;
        end else if ((tmp_reg_163 == 1'd0)) begin
            ap_phi_mux_do_init_phi_fu_113_p6 = 1'd0;
        end else begin
            ap_phi_mux_do_init_phi_fu_113_p6 = do_init_reg_109;
        end
    end else begin
        ap_phi_mux_do_init_phi_fu_113_p6 = do_init_reg_109;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_78)) begin
        if ((tmp_reg_163 == 1'd1)) begin
            ap_phi_mux_i1_phi_fu_129_p6 = 5'd0;
        end else if ((tmp_reg_163 == 1'd0)) begin
            ap_phi_mux_i1_phi_fu_129_p6 = i_reg_158;
        end else begin
            ap_phi_mux_i1_phi_fu_129_p6 = i1_reg_125;
        end
    end else begin
        ap_phi_mux_i1_phi_fu_129_p6 = i1_reg_125;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_fu_145_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (do_init_reg_109 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        config_out_V_blk_n = config_out_V_full_n;
    end else begin
        config_out_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (do_init_reg_109 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        config_out_V_write = 1'b1;
    end else begin
        config_out_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_blk_n = in_V_empty_n;
    end else begin
        in_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_read = 1'b1;
    end else begin
        in_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_blk_n = out_V_full_n;
    end else begin
        out_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_write = 1'b1;
    end else begin
        out_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((config_out_V_full_n == 1'b0) & (do_init_reg_109 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((out_V_full_n == 1'b0) | (in_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((config_out_V_full_n == 1'b0) & (do_init_reg_109 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((out_V_full_n == 1'b0) | (in_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((config_out_V_full_n == 1'b0) & (do_init_reg_109 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((out_V_full_n == 1'b0) | (in_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((out_V_full_n == 1'b0) | (in_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((config_out_V_full_n == 1'b0) & (do_init_reg_109 == 1'd1));
end

always @ (*) begin
    ap_condition_78 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign config_out_V_din = config_in_V_read_reg_153;

assign i_fu_139_p2 = (ap_phi_mux_i1_phi_fu_129_p6 + 5'd1);

assign out_V_din = in_V_dout;

assign tmp_fu_145_p2 = ((ap_phi_mux_i1_phi_fu_129_p6 == 5'd20) ? 1'b1 : 1'b0);

endmodule //dummy_fe