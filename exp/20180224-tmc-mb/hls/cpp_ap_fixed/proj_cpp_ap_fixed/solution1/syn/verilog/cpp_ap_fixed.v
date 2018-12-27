// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cpp_ap_fixed,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a200tfbg676-2,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.760000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=23,HLS_SYN_LUT=27}" *)

module cpp_ap_fixed (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        d_in1_V,
        d_in2_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] d_in1_V;
input  [5:0] d_in2_V;
output  [35:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [18:0] grp_fu_67_p2;
reg  signed [18:0] p_Val2_s_reg_83;
wire    ap_CS_fsm_state3;
wire   [12:0] tmp_1_fu_38_p3;
wire    ap_CS_fsm_state4;
wire   [16:0] tmp_2_fu_54_p4;
wire   [12:0] grp_fu_67_p1;
reg   [3:0] ap_NS_fsm;
wire   [18:0] grp_fu_67_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

cpp_ap_fixed_mul_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 19 ))
cpp_ap_fixed_mul_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(d_in2_V),
    .din1(grp_fu_67_p1),
    .ce(1'b1),
    .dout(grp_fu_67_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_s_reg_83 <= grp_fu_67_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_return = $signed(tmp_2_fu_54_p4);

assign grp_fu_67_p1 = grp_fu_67_p10;

assign grp_fu_67_p10 = tmp_1_fu_38_p3;

assign tmp_1_fu_38_p3 = {{d_in1_V}, {3'd0}};

assign tmp_2_fu_54_p4 = {{p_Val2_s_reg_83[18:2]}};

endmodule //cpp_ap_fixed