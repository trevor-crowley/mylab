// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mandelbrot,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200tfbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.567000,HLS_SYN_LAT=6657,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=39,HLS_SYN_FF=2483,HLS_SYN_LUT=2721}" *)

module mandelbrot (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        z_re,
        z_im,
        outp,
        outp_ap_vld
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_state20 = 27'd524288;
parameter    ap_ST_fsm_state21 = 27'd1048576;
parameter    ap_ST_fsm_state22 = 27'd2097152;
parameter    ap_ST_fsm_state23 = 27'd4194304;
parameter    ap_ST_fsm_state24 = 27'd8388608;
parameter    ap_ST_fsm_state25 = 27'd16777216;
parameter    ap_ST_fsm_state26 = 27'd33554432;
parameter    ap_ST_fsm_state27 = 27'd67108864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] z_re;
input  [63:0] z_im;
output  [15:0] outp;
output   outp_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg outp_ap_vld;

(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_108_p2;
reg   [63:0] reg_131;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state21;
wire   [63:0] grp_fu_114_p2;
reg   [63:0] reg_136;
wire   [63:0] grp_fu_100_p2;
reg   [63:0] reg_141;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state16;
wire   [63:0] grp_fu_104_p2;
reg   [63:0] reg_149;
wire   [8:0] i_1_fu_163_p2;
reg   [8:0] i_1_reg_240;
wire    ap_CS_fsm_state2;
wire   [63:0] grp_fu_120_p2;
reg   [63:0] m3_reg_245;
reg   [63:0] tmp_3_reg_251;
wire    ap_CS_fsm_state26;
wire   [8:0] tmp_6_fu_219_p2;
wire    ap_CS_fsm_state27;
reg   [63:0] x_complex_re_read_as_reg_57;
reg   [63:0] x_complex_im_read_as_reg_67;
reg   [8:0] mandelbrot_double_d_reg_77;
reg   [8:0] i_reg_89;
wire   [0:0] exitcond_fu_157_p2;
reg   [63:0] grp_fu_100_p0;
reg   [63:0] grp_fu_100_p1;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state22;
reg   [63:0] grp_fu_104_p0;
reg   [63:0] grp_fu_104_p1;
reg   [63:0] grp_fu_108_p0;
reg   [63:0] grp_fu_108_p1;
wire    ap_CS_fsm_state17;
reg   [63:0] grp_fu_114_p0;
reg   [63:0] grp_fu_114_p1;
wire   [63:0] tmp_3_to_int_fu_174_p1;
wire   [10:0] tmp_fu_177_p4;
wire   [51:0] tmp_4_fu_187_p1;
wire   [0:0] notrhs_fu_197_p2;
wire   [0:0] notlhs_fu_191_p2;
wire   [0:0] tmp_5_fu_203_p2;
wire   [0:0] tmp_7_fu_126_p2;
wire   [0:0] tmp_8_fu_209_p2;
wire   [8:0] tmp_5_cast_fu_215_p1;
reg   [1:0] grp_fu_100_opcode;
reg   [26:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
end

mandelbrot_dadddsbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
mandelbrot_dadddsbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_100_p0),
    .din1(grp_fu_100_p1),
    .opcode(grp_fu_100_opcode),
    .ce(1'b1),
    .dout(grp_fu_100_p2)
);

mandelbrot_dadd_6cud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
mandelbrot_dadd_6cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_104_p0),
    .din1(grp_fu_104_p1),
    .ce(1'b1),
    .dout(grp_fu_104_p2)
);

mandelbrot_dmul_6dEe #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
mandelbrot_dmul_6dEe_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_108_p0),
    .din1(grp_fu_108_p1),
    .ce(1'b1),
    .dout(grp_fu_108_p2)
);

mandelbrot_dmul_6dEe #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
mandelbrot_dmul_6dEe_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_114_p0),
    .din1(grp_fu_114_p1),
    .ce(1'b1),
    .dout(grp_fu_114_p2)
);

mandelbrot_dmul_6dEe #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
mandelbrot_dmul_6dEe_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(x_complex_im_read_as_reg_67),
    .din1(x_complex_re_read_as_reg_57),
    .ce(1'b1),
    .dout(grp_fu_120_p2)
);

mandelbrot_dcmp_6eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 1 ))
mandelbrot_dcmp_6eOg_U6(
    .din0(tmp_3_reg_251),
    .din1(64'd4616189618054758400),
    .opcode(5'd5),
    .dout(tmp_7_fu_126_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        i_reg_89 <= i_1_reg_240;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_89 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        mandelbrot_double_d_reg_77 <= tmp_6_fu_219_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        mandelbrot_double_d_reg_77 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        x_complex_im_read_as_reg_67 <= reg_149;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_complex_im_read_as_reg_67 <= z_im;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        x_complex_re_read_as_reg_57 <= reg_141;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_complex_re_read_as_reg_57 <= z_re;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_240 <= i_1_fu_163_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m3_reg_245 <= grp_fu_120_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_131 <= grp_fu_108_p2;
        reg_136 <= grp_fu_114_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_141 <= grp_fu_100_p2;
        reg_149 <= grp_fu_104_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        tmp_3_reg_251 <= grp_fu_100_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_157_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_157_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_100_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_100_opcode = 2'd0;
    end else begin
        grp_fu_100_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_100_p0 = reg_141;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_100_p0 = reg_131;
    end else begin
        grp_fu_100_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_100_p1 = z_re;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_100_p1 = reg_136;
    end else begin
        grp_fu_100_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_104_p0 = reg_149;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_104_p0 = m3_reg_245;
    end else begin
        grp_fu_104_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_104_p1 = z_im;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_104_p1 = m3_reg_245;
    end else begin
        grp_fu_104_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_108_p0 = reg_149;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_108_p0 = x_complex_re_read_as_reg_57;
    end else begin
        grp_fu_108_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_108_p1 = reg_149;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_108_p1 = x_complex_re_read_as_reg_57;
    end else begin
        grp_fu_108_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_114_p0 = reg_141;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_114_p0 = x_complex_im_read_as_reg_67;
    end else begin
        grp_fu_114_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_114_p1 = reg_141;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_114_p1 = x_complex_im_read_as_reg_67;
    end else begin
        grp_fu_114_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_157_p2 == 1'd1))) begin
        outp_ap_vld = 1'b1;
    end else begin
        outp_ap_vld = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_157_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign exitcond_fu_157_p2 = ((i_reg_89 == 9'd256) ? 1'b1 : 1'b0);

assign i_1_fu_163_p2 = (i_reg_89 + 9'd1);

assign notlhs_fu_191_p2 = ((tmp_fu_177_p4 != 11'd2047) ? 1'b1 : 1'b0);

assign notrhs_fu_197_p2 = ((tmp_4_fu_187_p1 == 52'd0) ? 1'b1 : 1'b0);

assign outp = mandelbrot_double_d_reg_77;

assign tmp_3_to_int_fu_174_p1 = tmp_3_reg_251;

assign tmp_4_fu_187_p1 = tmp_3_to_int_fu_174_p1[51:0];

assign tmp_5_cast_fu_215_p1 = tmp_8_fu_209_p2;

assign tmp_5_fu_203_p2 = (notrhs_fu_197_p2 | notlhs_fu_191_p2);

assign tmp_6_fu_219_p2 = (tmp_5_cast_fu_215_p1 + mandelbrot_double_d_reg_77);

assign tmp_8_fu_209_p2 = (tmp_7_fu_126_p2 & tmp_5_fu_203_p2);

assign tmp_fu_177_p4 = {{tmp_3_to_int_fu_174_p1[62:52]}};

endmodule //mandelbrot