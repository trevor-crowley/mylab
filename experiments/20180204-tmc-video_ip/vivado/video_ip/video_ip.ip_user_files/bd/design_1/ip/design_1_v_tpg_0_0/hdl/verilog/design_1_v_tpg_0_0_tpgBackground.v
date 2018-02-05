// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgBackground (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        height,
        width,
        patternId,
        motionSpeed,
        colorFormat,
        outImg_V_val_0_V_din,
        outImg_V_val_0_V_full_n,
        outImg_V_val_0_V_write,
        outImg_V_val_1_V_din,
        outImg_V_val_1_V_full_n,
        outImg_V_val_1_V_write,
        outImg_V_val_2_V_din,
        outImg_V_val_2_V_full_n,
        outImg_V_val_2_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state8 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] height;
input  [15:0] width;
input  [7:0] patternId;
input  [7:0] motionSpeed;
input  [7:0] colorFormat;
output  [7:0] outImg_V_val_0_V_din;
input   outImg_V_val_0_V_full_n;
output   outImg_V_val_0_V_write;
output  [7:0] outImg_V_val_1_V_din;
input   outImg_V_val_1_V_full_n;
output   outImg_V_val_1_V_write;
output  [7:0] outImg_V_val_2_V_din;
input   outImg_V_val_2_V_full_n;
output   outImg_V_val_2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] rampStart;
reg    outImg_V_val_0_V_blk_n;
reg    ap_enable_reg_pp0_iter4;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_718;
reg   [0:0] ap_reg_pp0_iter3_exitcond_reg_718;
reg    outImg_V_val_1_V_blk_n;
reg    outImg_V_val_2_V_blk_n;
reg   [15:0] x_reg_283;
reg   [15:0] ap_reg_pp0_iter1_x_reg_283;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    outImg_V_val_0_V1_status;
reg    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] reg_441;
reg    ap_enable_reg_pp0_iter2;
wire   [7:0] patternId_read_read_fu_240_p2;
reg   [7:0] reg_445;
reg    ap_block_state1;
wire   [0:0] exitcond3_fu_459_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] y_2_fu_464_p2;
reg   [15:0] y_2_reg_713;
wire   [0:0] exitcond_fu_485_p2;
reg   [0:0] ap_reg_pp0_iter1_exitcond_reg_718;
reg   [0:0] ap_reg_pp0_iter2_exitcond_reg_718;
wire   [15:0] x_2_fu_490_p2;
reg   [15:0] x_2_reg_722;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] outpix_val_0_V_5_reg_727;
reg   [7:0] outpix_val_1_V_16_reg_732;
reg   [7:0] outpix_val_2_V_15_reg_737;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter3;
wire    grp_tpgPatternCheckerBoa_fu_295_ap_start;
wire    grp_tpgPatternCheckerBoa_fu_295_ap_done;
wire    grp_tpgPatternCheckerBoa_fu_295_ap_idle;
wire    grp_tpgPatternCheckerBoa_fu_295_ap_ready;
reg    grp_tpgPatternCheckerBoa_fu_295_ap_ce;
wire   [7:0] grp_tpgPatternCheckerBoa_fu_295_ap_return_0;
wire   [7:0] grp_tpgPatternCheckerBoa_fu_295_ap_return_1;
wire   [7:0] grp_tpgPatternCheckerBoa_fu_295_ap_return_2;
wire    grp_tpgPatternTartanColo_fu_328_ap_start;
wire    grp_tpgPatternTartanColo_fu_328_ap_done;
wire    grp_tpgPatternTartanColo_fu_328_ap_idle;
wire    grp_tpgPatternTartanColo_fu_328_ap_ready;
reg    grp_tpgPatternTartanColo_fu_328_ap_ce;
wire   [7:0] grp_tpgPatternTartanColo_fu_328_ap_return_0;
wire   [7:0] grp_tpgPatternTartanColo_fu_328_ap_return_1;
wire   [7:0] grp_tpgPatternTartanColo_fu_328_ap_return_2;
wire    grp_tpgPatternCrossHatch_fu_361_ap_start;
wire    grp_tpgPatternCrossHatch_fu_361_ap_done;
wire    grp_tpgPatternCrossHatch_fu_361_ap_idle;
wire    grp_tpgPatternCrossHatch_fu_361_ap_ready;
reg    grp_tpgPatternCrossHatch_fu_361_ap_ce;
wire   [7:0] grp_tpgPatternCrossHatch_fu_361_ap_return_0;
wire   [7:0] grp_tpgPatternCrossHatch_fu_361_ap_return_1;
wire   [7:0] grp_tpgPatternCrossHatch_fu_361_ap_return_2;
wire    grp_tpgPatternColorBars_fu_382_ap_start;
wire    grp_tpgPatternColorBars_fu_382_ap_done;
wire    grp_tpgPatternColorBars_fu_382_ap_idle;
wire    grp_tpgPatternColorBars_fu_382_ap_ready;
reg    grp_tpgPatternColorBars_fu_382_ap_ce;
wire   [7:0] grp_tpgPatternColorBars_fu_382_ap_return_0;
wire   [7:0] grp_tpgPatternColorBars_fu_382_ap_return_1;
wire   [7:0] grp_tpgPatternColorBars_fu_382_ap_return_2;
wire    call_ret15_tpgPRBS_fu_406_ap_start;
wire    call_ret15_tpgPRBS_fu_406_ap_done;
wire    call_ret15_tpgPRBS_fu_406_ap_idle;
wire    call_ret15_tpgPRBS_fu_406_ap_ready;
wire   [7:0] call_ret15_tpgPRBS_fu_406_ap_return_0;
wire   [7:0] call_ret15_tpgPRBS_fu_406_ap_return_1;
wire   [7:0] call_ret15_tpgPRBS_fu_406_ap_return_2;
reg    call_ret15_tpgPRBS_fu_406_ap_ce;
wire    grp_tpgPatternSolidBlack_fu_419_ap_start;
wire    grp_tpgPatternSolidBlack_fu_419_ap_done;
wire    grp_tpgPatternSolidBlack_fu_419_ap_idle;
wire    grp_tpgPatternSolidBlack_fu_419_ap_ready;
reg    grp_tpgPatternSolidBlack_fu_419_ap_ce;
wire   [7:0] grp_tpgPatternSolidBlack_fu_419_ap_return_0;
wire   [7:0] grp_tpgPatternSolidBlack_fu_419_ap_return_1;
reg   [15:0] y_reg_271;
wire    ap_CS_fsm_state8;
reg   [15:0] ap_phi_mux_x_phi_fu_287_p4;
reg    ap_reg_grp_tpgPatternCheckerBoa_fu_295_ap_start;
reg    ap_reg_grp_tpgPatternTartanColo_fu_328_ap_start;
reg    ap_reg_grp_tpgPatternCrossHatch_fu_361_ap_start;
reg    ap_reg_grp_tpgPatternColorBars_fu_382_ap_start;
reg    ap_reg_call_ret15_tpgPRBS_fu_406_ap_start;
reg    ap_reg_grp_tpgPatternSolidBlack_fu_419_ap_start;
reg    outImg_V_val_0_V1_update;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] tmp_s_fu_474_p2;
reg   [7:0] tmp_val_0_V_fu_216;
reg   [7:0] tmp_val_1_V_fu_220;
reg   [7:0] tmp_val_2_V_fu_224;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 rampStart = 8'd0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_reg_grp_tpgPatternCheckerBoa_fu_295_ap_start = 1'b0;
#0 ap_reg_grp_tpgPatternTartanColo_fu_328_ap_start = 1'b0;
#0 ap_reg_grp_tpgPatternCrossHatch_fu_361_ap_start = 1'b0;
#0 ap_reg_grp_tpgPatternColorBars_fu_382_ap_start = 1'b0;
#0 ap_reg_call_ret15_tpgPRBS_fu_406_ap_start = 1'b0;
#0 ap_reg_grp_tpgPatternSolidBlack_fu_419_ap_start = 1'b0;
end

design_1_v_tpg_0_0_tpgPatternCheckerBoa grp_tpgPatternCheckerBoa_fu_295(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgPatternCheckerBoa_fu_295_ap_start),
    .ap_done(grp_tpgPatternCheckerBoa_fu_295_ap_done),
    .ap_idle(grp_tpgPatternCheckerBoa_fu_295_ap_idle),
    .ap_ready(grp_tpgPatternCheckerBoa_fu_295_ap_ready),
    .ap_ce(grp_tpgPatternCheckerBoa_fu_295_ap_ce),
    .y(y_reg_271),
    .x(x_reg_283),
    .width(width),
    .height(height),
    .color(colorFormat),
    .ap_return_0(grp_tpgPatternCheckerBoa_fu_295_ap_return_0),
    .ap_return_1(grp_tpgPatternCheckerBoa_fu_295_ap_return_1),
    .ap_return_2(grp_tpgPatternCheckerBoa_fu_295_ap_return_2)
);

design_1_v_tpg_0_0_tpgPatternTartanColo grp_tpgPatternTartanColo_fu_328(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgPatternTartanColo_fu_328_ap_start),
    .ap_done(grp_tpgPatternTartanColo_fu_328_ap_done),
    .ap_idle(grp_tpgPatternTartanColo_fu_328_ap_idle),
    .ap_ready(grp_tpgPatternTartanColo_fu_328_ap_ready),
    .ap_ce(grp_tpgPatternTartanColo_fu_328_ap_ce),
    .y(y_reg_271),
    .x(x_reg_283),
    .width(width),
    .height(height),
    .color(colorFormat),
    .ap_return_0(grp_tpgPatternTartanColo_fu_328_ap_return_0),
    .ap_return_1(grp_tpgPatternTartanColo_fu_328_ap_return_1),
    .ap_return_2(grp_tpgPatternTartanColo_fu_328_ap_return_2)
);

design_1_v_tpg_0_0_tpgPatternCrossHatch grp_tpgPatternCrossHatch_fu_361(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgPatternCrossHatch_fu_361_ap_start),
    .ap_done(grp_tpgPatternCrossHatch_fu_361_ap_done),
    .ap_idle(grp_tpgPatternCrossHatch_fu_361_ap_idle),
    .ap_ready(grp_tpgPatternCrossHatch_fu_361_ap_ready),
    .ap_ce(grp_tpgPatternCrossHatch_fu_361_ap_ce),
    .y(y_reg_271),
    .x(ap_reg_pp0_iter1_x_reg_283),
    .width(width),
    .height(height),
    .color(colorFormat),
    .ap_return_0(grp_tpgPatternCrossHatch_fu_361_ap_return_0),
    .ap_return_1(grp_tpgPatternCrossHatch_fu_361_ap_return_1),
    .ap_return_2(grp_tpgPatternCrossHatch_fu_361_ap_return_2)
);

design_1_v_tpg_0_0_tpgPatternColorBars grp_tpgPatternColorBars_fu_382(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgPatternColorBars_fu_382_ap_start),
    .ap_done(grp_tpgPatternColorBars_fu_382_ap_done),
    .ap_idle(grp_tpgPatternColorBars_fu_382_ap_idle),
    .ap_ready(grp_tpgPatternColorBars_fu_382_ap_ready),
    .ap_ce(grp_tpgPatternColorBars_fu_382_ap_ce),
    .x(ap_reg_pp0_iter1_x_reg_283),
    .width(width),
    .color(colorFormat),
    .ap_return_0(grp_tpgPatternColorBars_fu_382_ap_return_0),
    .ap_return_1(grp_tpgPatternColorBars_fu_382_ap_return_1),
    .ap_return_2(grp_tpgPatternColorBars_fu_382_ap_return_2)
);

design_1_v_tpg_0_0_tpgPRBS call_ret15_tpgPRBS_fu_406(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(call_ret15_tpgPRBS_fu_406_ap_start),
    .ap_done(call_ret15_tpgPRBS_fu_406_ap_done),
    .ap_idle(call_ret15_tpgPRBS_fu_406_ap_idle),
    .ap_ready(call_ret15_tpgPRBS_fu_406_ap_ready),
    .x(ap_reg_pp0_iter1_x_reg_283),
    .color(colorFormat),
    .ap_return_0(call_ret15_tpgPRBS_fu_406_ap_return_0),
    .ap_return_1(call_ret15_tpgPRBS_fu_406_ap_return_1),
    .ap_return_2(call_ret15_tpgPRBS_fu_406_ap_return_2),
    .ap_ce(call_ret15_tpgPRBS_fu_406_ap_ce)
);

design_1_v_tpg_0_0_tpgPatternSolidBlack grp_tpgPatternSolidBlack_fu_419(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgPatternSolidBlack_fu_419_ap_start),
    .ap_done(grp_tpgPatternSolidBlack_fu_419_ap_done),
    .ap_idle(grp_tpgPatternSolidBlack_fu_419_ap_idle),
    .ap_ready(grp_tpgPatternSolidBlack_fu_419_ap_ready),
    .ap_ce(grp_tpgPatternSolidBlack_fu_419_ap_ce),
    .x(x_reg_283),
    .color(colorFormat),
    .ap_return_0(grp_tpgPatternSolidBlack_fu_419_ap_return_0),
    .ap_return_1(grp_tpgPatternSolidBlack_fu_419_ap_return_1)
);

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
        end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_459_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond3_fu_459_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if (((exitcond3_fu_459_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_call_ret15_tpgPRBS_fu_406_ap_start <= 1'b0;
    end else begin
        if (((patternId_read_read_fu_240_p2 == 8'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            ap_reg_call_ret15_tpgPRBS_fu_406_ap_start <= 1'b1;
        end else if ((call_ret15_tpgPRBS_fu_406_ap_ready == 1'b1)) begin
            ap_reg_call_ret15_tpgPRBS_fu_406_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_tpgPatternCheckerBoa_fu_295_ap_start <= 1'b0;
    end else begin
        if (((patternId_read_read_fu_240_p2 == 8'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            ap_reg_grp_tpgPatternCheckerBoa_fu_295_ap_start <= 1'b1;
        end else if ((grp_tpgPatternCheckerBoa_fu_295_ap_ready == 1'b1)) begin
            ap_reg_grp_tpgPatternCheckerBoa_fu_295_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_tpgPatternColorBars_fu_382_ap_start <= 1'b0;
    end else begin
        if (((patternId_read_read_fu_240_p2 == 8'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            ap_reg_grp_tpgPatternColorBars_fu_382_ap_start <= 1'b1;
        end else if ((grp_tpgPatternColorBars_fu_382_ap_ready == 1'b1)) begin
            ap_reg_grp_tpgPatternColorBars_fu_382_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_tpgPatternCrossHatch_fu_361_ap_start <= 1'b0;
    end else begin
        if (((patternId_read_read_fu_240_p2 == 8'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            ap_reg_grp_tpgPatternCrossHatch_fu_361_ap_start <= 1'b1;
        end else if ((grp_tpgPatternCrossHatch_fu_361_ap_ready == 1'b1)) begin
            ap_reg_grp_tpgPatternCrossHatch_fu_361_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_tpgPatternSolidBlack_fu_419_ap_start <= 1'b0;
    end else begin
        if ((((patternId_read_read_fu_240_p2 == 8'd17) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd18) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd19) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
            ap_reg_grp_tpgPatternSolidBlack_fu_419_ap_start <= 1'b1;
        end else if ((grp_tpgPatternSolidBlack_fu_419_ap_ready == 1'b1)) begin
            ap_reg_grp_tpgPatternSolidBlack_fu_419_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_tpgPatternTartanColo_fu_328_ap_start <= 1'b0;
    end else begin
        if (((patternId_read_read_fu_240_p2 == 8'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            ap_reg_grp_tpgPatternTartanColo_fu_328_ap_start <= 1'b1;
        end else if ((grp_tpgPatternTartanColo_fu_328_ap_ready == 1'b1)) begin
            ap_reg_grp_tpgPatternTartanColo_fu_328_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((patternId_read_read_fu_240_p2 == 8'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_0_V_fu_216 <= grp_tpgPatternColorBars_fu_382_ap_return_0;
    end else if (((patternId_read_read_fu_240_p2 == 8'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_0_V_fu_216 <= grp_tpgPatternTartanColo_fu_328_ap_return_0;
    end else if (((patternId_read_read_fu_240_p2 == 8'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_0_V_fu_216 <= grp_tpgPatternCrossHatch_fu_361_ap_return_0;
    end else if (((patternId_read_read_fu_240_p2 == 8'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_0_V_fu_216 <= grp_tpgPatternCheckerBoa_fu_295_ap_return_0;
    end else if (((patternId_read_read_fu_240_p2 == 8'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_0_V_fu_216 <= outpix_val_0_V_5_reg_727;
    end else if ((((patternId_read_read_fu_240_p2 == 8'd17) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd18) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd19) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        tmp_val_0_V_fu_216 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((patternId_read_read_fu_240_p2 == 8'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_1_V_fu_220 <= grp_tpgPatternColorBars_fu_382_ap_return_1;
    end else if (((patternId_read_read_fu_240_p2 == 8'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_1_V_fu_220 <= grp_tpgPatternTartanColo_fu_328_ap_return_1;
    end else if (((patternId_read_read_fu_240_p2 == 8'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_1_V_fu_220 <= grp_tpgPatternCrossHatch_fu_361_ap_return_1;
    end else if (((patternId_read_read_fu_240_p2 == 8'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_1_V_fu_220 <= grp_tpgPatternCheckerBoa_fu_295_ap_return_1;
    end else if (((patternId_read_read_fu_240_p2 == 8'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_1_V_fu_220 <= outpix_val_1_V_16_reg_732;
    end else if ((((patternId_read_read_fu_240_p2 == 8'd17) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd18) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd19) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        tmp_val_1_V_fu_220 <= reg_441;
    end
end

always @ (posedge ap_clk) begin
    if (((patternId_read_read_fu_240_p2 == 8'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_2_V_fu_224 <= grp_tpgPatternColorBars_fu_382_ap_return_2;
    end else if (((patternId_read_read_fu_240_p2 == 8'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_2_V_fu_224 <= grp_tpgPatternTartanColo_fu_328_ap_return_2;
    end else if (((patternId_read_read_fu_240_p2 == 8'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_2_V_fu_224 <= grp_tpgPatternCrossHatch_fu_361_ap_return_2;
    end else if (((patternId_read_read_fu_240_p2 == 8'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_2_V_fu_224 <= grp_tpgPatternCheckerBoa_fu_295_ap_return_2;
    end else if (((patternId_read_read_fu_240_p2 == 8'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        tmp_val_2_V_fu_224 <= outpix_val_2_V_15_reg_737;
    end else if ((((patternId_read_read_fu_240_p2 == 8'd17) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd18) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd19) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        tmp_val_2_V_fu_224 <= reg_445;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_459_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        x_reg_283 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_reg_718 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        x_reg_283 <= x_2_reg_722;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        y_reg_271 <= y_2_reg_713;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        y_reg_271 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_exitcond_reg_718 <= exitcond_reg_718;
        ap_reg_pp0_iter1_x_reg_283 <= x_reg_283;
        exitcond_reg_718 <= exitcond_fu_485_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_exitcond_reg_718 <= ap_reg_pp0_iter1_exitcond_reg_718;
        ap_reg_pp0_iter3_exitcond_reg_718 <= ap_reg_pp0_iter2_exitcond_reg_718;
    end
end

always @ (posedge ap_clk) begin
    if (((patternId_read_read_fu_240_p2 == 8'd16) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        outpix_val_0_V_5_reg_727 <= call_ret15_tpgPRBS_fu_406_ap_return_0;
        outpix_val_1_V_16_reg_732 <= call_ret15_tpgPRBS_fu_406_ap_return_1;
        outpix_val_2_V_15_reg_737 <= call_ret15_tpgPRBS_fu_406_ap_return_2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_459_p2 == 1'd1))) begin
        rampStart <= tmp_s_fu_474_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((patternId_read_read_fu_240_p2 == 8'd17) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd18) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd19) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((patternId_read_read_fu_240_p2 == 8'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        reg_441 <= grp_tpgPatternSolidBlack_fu_419_ap_return_0;
        reg_445 <= grp_tpgPatternSolidBlack_fu_419_ap_return_1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        x_2_reg_722 <= x_2_fu_490_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_2_reg_713 <= y_2_fu_464_p2;
    end
end

always @ (*) begin
    if ((exitcond_fu_485_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_459_p2 == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_x_phi_fu_287_p4 = x_2_reg_722;
    end else begin
        ap_phi_mux_x_phi_fu_287_p4 = x_reg_283;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_459_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((patternId_read_read_fu_240_p2 == 8'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        call_ret15_tpgPRBS_fu_406_ap_ce = 1'b1;
    end else begin
        call_ret15_tpgPRBS_fu_406_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((patternId_read_read_fu_240_p2 == 8'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_tpgPatternCheckerBoa_fu_295_ap_ce = 1'b1;
    end else begin
        grp_tpgPatternCheckerBoa_fu_295_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((patternId_read_read_fu_240_p2 == 8'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_tpgPatternColorBars_fu_382_ap_ce = 1'b1;
    end else begin
        grp_tpgPatternColorBars_fu_382_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((patternId_read_read_fu_240_p2 == 8'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_tpgPatternCrossHatch_fu_361_ap_ce = 1'b1;
    end else begin
        grp_tpgPatternCrossHatch_fu_361_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_tpgPatternSolidBlack_fu_419_ap_ce = 1'b1;
    end else begin
        grp_tpgPatternSolidBlack_fu_419_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((patternId_read_read_fu_240_p2 == 8'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_tpgPatternTartanColo_fu_328_ap_ce = 1'b1;
    end else begin
        grp_tpgPatternTartanColo_fu_328_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        outImg_V_val_0_V1_update = 1'b1;
    end else begin
        outImg_V_val_0_V1_update = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        outImg_V_val_0_V_blk_n = outImg_V_val_0_V_full_n;
    end else begin
        outImg_V_val_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        outImg_V_val_1_V_blk_n = outImg_V_val_1_V_full_n;
    end else begin
        outImg_V_val_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        outImg_V_val_2_V_blk_n = outImg_V_val_2_V_full_n;
    end else begin
        outImg_V_val_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_459_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_fu_485_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_fu_485_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (outImg_V_val_0_V1_status == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (outImg_V_val_0_V1_status == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (outImg_V_val_0_V1_status == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp0_stage0_iter4 = ((ap_reg_pp0_iter3_exitcond_reg_718 == 1'd0) & (outImg_V_val_0_V1_status == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign call_ret15_tpgPRBS_fu_406_ap_start = ap_reg_call_ret15_tpgPRBS_fu_406_ap_start;

assign exitcond3_fu_459_p2 = ((y_reg_271 == height) ? 1'b1 : 1'b0);

assign exitcond_fu_485_p2 = ((ap_phi_mux_x_phi_fu_287_p4 == width) ? 1'b1 : 1'b0);

assign grp_tpgPatternCheckerBoa_fu_295_ap_start = ap_reg_grp_tpgPatternCheckerBoa_fu_295_ap_start;

assign grp_tpgPatternColorBars_fu_382_ap_start = ap_reg_grp_tpgPatternColorBars_fu_382_ap_start;

assign grp_tpgPatternCrossHatch_fu_361_ap_start = ap_reg_grp_tpgPatternCrossHatch_fu_361_ap_start;

assign grp_tpgPatternSolidBlack_fu_419_ap_start = ap_reg_grp_tpgPatternSolidBlack_fu_419_ap_start;

assign grp_tpgPatternTartanColo_fu_328_ap_start = ap_reg_grp_tpgPatternTartanColo_fu_328_ap_start;

assign outImg_V_val_0_V1_status = (outImg_V_val_2_V_full_n & outImg_V_val_1_V_full_n & outImg_V_val_0_V_full_n);

assign outImg_V_val_0_V_din = tmp_val_0_V_fu_216;

assign outImg_V_val_0_V_write = outImg_V_val_0_V1_update;

assign outImg_V_val_1_V_din = tmp_val_1_V_fu_220;

assign outImg_V_val_1_V_write = outImg_V_val_0_V1_update;

assign outImg_V_val_2_V_din = tmp_val_2_V_fu_224;

assign outImg_V_val_2_V_write = outImg_V_val_0_V1_update;

assign patternId_read_read_fu_240_p2 = patternId;

assign tmp_s_fu_474_p2 = (rampStart + motionSpeed);

assign x_2_fu_490_p2 = (ap_phi_mux_x_phi_fu_287_p4 + 16'd1);

assign y_2_fu_464_p2 = (y_reg_271 + 16'd1);

endmodule //design_1_v_tpg_0_0_tpgBackground
