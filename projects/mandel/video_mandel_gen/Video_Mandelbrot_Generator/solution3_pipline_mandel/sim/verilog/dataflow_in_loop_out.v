// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dataflow_in_loop_out (
        img_0_data_stream_0_V_din,
        img_0_data_stream_0_V_full_n,
        img_0_data_stream_0_V_write,
        img_0_data_stream_1_V_din,
        img_0_data_stream_1_V_full_n,
        img_0_data_stream_1_V_write,
        img_0_data_stream_2_V_din,
        img_0_data_stream_2_V_full_n,
        img_0_data_stream_2_V_write,
        im_V,
        v_assign,
        re_V,
        zoom_factor_V,
        ap_clk,
        ap_rst,
        im_V_ap_vld,
        v_assign_ap_vld,
        re_V_ap_vld,
        zoom_factor_V_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


output  [7:0] img_0_data_stream_0_V_din;
input   img_0_data_stream_0_V_full_n;
output   img_0_data_stream_0_V_write;
output  [7:0] img_0_data_stream_1_V_din;
input   img_0_data_stream_1_V_full_n;
output   img_0_data_stream_1_V_write;
output  [7:0] img_0_data_stream_2_V_din;
input   img_0_data_stream_2_V_full_n;
output   img_0_data_stream_2_V_write;
input  [17:0] im_V;
input  [2:0] v_assign;
input  [17:0] re_V;
input  [17:0] zoom_factor_V;
input   ap_clk;
input   ap_rst;
input   im_V_ap_vld;
input   v_assign_ap_vld;
input   re_V_ap_vld;
input   zoom_factor_V_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    inner_proc_U0_ap_start;
wire    inner_proc_U0_ap_done;
wire    inner_proc_U0_ap_continue;
wire    inner_proc_U0_ap_idle;
wire    inner_proc_U0_ap_ready;
wire   [7:0] inner_proc_U0_img_0_data_stream_0_V_din;
wire    inner_proc_U0_img_0_data_stream_0_V_write;
wire   [7:0] inner_proc_U0_img_0_data_stream_1_V_din;
wire    inner_proc_U0_img_0_data_stream_1_V_write;
wire   [7:0] inner_proc_U0_img_0_data_stream_2_V_din;
wire    inner_proc_U0_img_0_data_stream_2_V_write;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    inner_proc_U0_start_full_n;
wire    inner_proc_U0_start_write;

inner_proc inner_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(inner_proc_U0_ap_start),
    .ap_done(inner_proc_U0_ap_done),
    .ap_continue(inner_proc_U0_ap_continue),
    .ap_idle(inner_proc_U0_ap_idle),
    .ap_ready(inner_proc_U0_ap_ready),
    .img_0_data_stream_0_V_din(inner_proc_U0_img_0_data_stream_0_V_din),
    .img_0_data_stream_0_V_full_n(img_0_data_stream_0_V_full_n),
    .img_0_data_stream_0_V_write(inner_proc_U0_img_0_data_stream_0_V_write),
    .img_0_data_stream_1_V_din(inner_proc_U0_img_0_data_stream_1_V_din),
    .img_0_data_stream_1_V_full_n(img_0_data_stream_1_V_full_n),
    .img_0_data_stream_1_V_write(inner_proc_U0_img_0_data_stream_1_V_write),
    .img_0_data_stream_2_V_din(inner_proc_U0_img_0_data_stream_2_V_din),
    .img_0_data_stream_2_V_full_n(img_0_data_stream_2_V_full_n),
    .img_0_data_stream_2_V_write(inner_proc_U0_img_0_data_stream_2_V_write),
    .im_V(im_V),
    .v_assign(v_assign),
    .re_V(re_V),
    .zoom_factor_V(zoom_factor_V)
);

assign ap_done = inner_proc_U0_ap_done;

assign ap_idle = inner_proc_U0_ap_idle;

assign ap_ready = inner_proc_U0_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = inner_proc_U0_ap_done;

assign ap_sync_ready = inner_proc_U0_ap_ready;

assign img_0_data_stream_0_V_din = inner_proc_U0_img_0_data_stream_0_V_din;

assign img_0_data_stream_0_V_write = inner_proc_U0_img_0_data_stream_0_V_write;

assign img_0_data_stream_1_V_din = inner_proc_U0_img_0_data_stream_1_V_din;

assign img_0_data_stream_1_V_write = inner_proc_U0_img_0_data_stream_1_V_write;

assign img_0_data_stream_2_V_din = inner_proc_U0_img_0_data_stream_2_V_din;

assign img_0_data_stream_2_V_write = inner_proc_U0_img_0_data_stream_2_V_write;

assign inner_proc_U0_ap_continue = ap_continue;

assign inner_proc_U0_ap_start = ap_start;

assign inner_proc_U0_start_full_n = 1'b1;

assign inner_proc_U0_start_write = 1'b0;

endmodule //dataflow_in_loop_out
