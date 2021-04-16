
`timescale 1 ns / 1 ps

  module TPG_sim_bd_v_tpg_0_0_v_tpg_mul_mul_17s_16ns_32_1_1_DSP48_6(a, b, p);
input signed [17 - 1 : 0] a;
input [16 - 1 : 0] b;
output signed [32 - 1 : 0] p;

assign p = $signed (a) * $signed ({1'b0, b});

endmodule
`timescale 1 ns / 1 ps
module TPG_sim_bd_v_tpg_0_0_v_tpg_mul_mul_17s_16ns_32_1_1(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



TPG_sim_bd_v_tpg_0_0_v_tpg_mul_mul_17s_16ns_32_1_1_DSP48_6 TPG_sim_bd_v_tpg_0_0_v_tpg_mul_mul_17s_16ns_32_1_1_DSP48_6_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

