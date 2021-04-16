// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _video_pattern_generator_HH_
#define _video_pattern_generator_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct video_pattern_generator : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<24> > m_axis_video_TDATA;
    sc_out< sc_logic > m_axis_video_TVALID;
    sc_in< sc_logic > m_axis_video_TREADY;
    sc_out< sc_lv<3> > m_axis_video_TKEEP;
    sc_out< sc_lv<3> > m_axis_video_TSTRB;
    sc_out< sc_lv<1> > m_axis_video_TUSER;
    sc_out< sc_lv<1> > m_axis_video_TLAST;
    sc_out< sc_lv<1> > m_axis_video_TID;
    sc_out< sc_lv<1> > m_axis_video_TDEST;


    // Module declarations
    video_pattern_generator(sc_module_name name);
    SC_HAS_PROCESS(video_pattern_generator);

    ~video_pattern_generator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<24> > m_axis_video_V_data_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_data_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_data_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_data_V_1_ack_in;
    sc_signal< sc_logic > m_axis_video_V_data_V_1_ack_out;
    sc_signal< sc_logic > m_axis_video_V_data_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_data_V_1_sel;
    sc_signal< sc_lv<2> > m_axis_video_V_data_V_1_state;
    sc_signal< sc_lv<3> > m_axis_video_V_keep_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_keep_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_keep_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_keep_V_1_ack_out;
    sc_signal< sc_logic > m_axis_video_V_keep_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_keep_V_1_sel;
    sc_signal< sc_lv<2> > m_axis_video_V_keep_V_1_state;
    sc_signal< sc_lv<3> > m_axis_video_V_strb_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_strb_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_strb_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_strb_V_1_ack_out;
    sc_signal< sc_logic > m_axis_video_V_strb_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_strb_V_1_sel;
    sc_signal< sc_lv<2> > m_axis_video_V_strb_V_1_state;
    sc_signal< sc_lv<1> > m_axis_video_V_user_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_ack_in;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_ack_out;
    sc_signal< sc_lv<1> > m_axis_video_V_user_V_1_payload_A;
    sc_signal< sc_lv<1> > m_axis_video_V_user_V_1_payload_B;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_sel_wr;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_sel;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_load_A;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_load_B;
    sc_signal< sc_lv<2> > m_axis_video_V_user_V_1_state;
    sc_signal< sc_logic > m_axis_video_V_user_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > m_axis_video_V_last_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_ack_in;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > m_axis_video_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > m_axis_video_V_last_V_1_payload_B;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_sel_wr;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_sel;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_load_A;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > m_axis_video_V_last_V_1_state;
    sc_signal< sc_logic > m_axis_video_V_last_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > m_axis_video_V_id_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_id_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_id_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_id_V_1_ack_out;
    sc_signal< sc_logic > m_axis_video_V_id_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_id_V_1_sel;
    sc_signal< sc_lv<2> > m_axis_video_V_id_V_1_state;
    sc_signal< sc_lv<1> > m_axis_video_V_dest_V_1_data_out;
    sc_signal< sc_logic > m_axis_video_V_dest_V_1_vld_in;
    sc_signal< sc_logic > m_axis_video_V_dest_V_1_vld_out;
    sc_signal< sc_logic > m_axis_video_V_dest_V_1_ack_out;
    sc_signal< sc_logic > m_axis_video_V_dest_V_1_sel_rd;
    sc_signal< sc_logic > m_axis_video_V_dest_V_1_sel;
    sc_signal< sc_lv<2> > m_axis_video_V_dest_V_1_state;
    sc_signal< sc_logic > m_axis_video_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln14_reg_199;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln14_reg_199_pp0_iter1_reg;
    sc_signal< sc_lv<19> > indvar_flatten_reg_102;
    sc_signal< sc_lv<10> > i_0_reg_113;
    sc_signal< sc_lv<10> > j_0_reg_124;
    sc_signal< sc_lv<1> > icmp_ln14_fu_135_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<19> > add_ln14_fu_141_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<10> > select_ln14_fu_167_p3;
    sc_signal< sc_lv<10> > select_ln14_reg_208;
    sc_signal< sc_lv<1> > tmp_user_V_fu_181_p2;
    sc_signal< sc_lv<1> > tmp_user_V_reg_213;
    sc_signal< sc_lv<1> > tmp_last_V_fu_187_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_218;
    sc_signal< sc_lv<10> > j_fu_193_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_lv<10> > ap_phi_mux_i_0_phi_fu_117_p4;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<1> > icmp_ln16_fu_147_p2;
    sc_signal< sc_lv<10> > add_ln14_1_fu_161_p2;
    sc_signal< sc_lv<10> > select_ln16_fu_153_p3;
    sc_signal< sc_lv<10> > or_ln21_fu_175_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<19> ap_const_lv19_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<24> ap_const_lv24_FF0000;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<19> ap_const_lv19_75300;
    static const sc_lv<19> ap_const_lv19_1;
    static const sc_lv<10> ap_const_lv10_320;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_31F;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln14_1_fu_161_p2();
    void thread_add_ln14_fu_141_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_io();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_117_p4();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_icmp_ln14_fu_135_p2();
    void thread_icmp_ln16_fu_147_p2();
    void thread_j_fu_193_p2();
    void thread_m_axis_video_TDATA();
    void thread_m_axis_video_TDATA_blk_n();
    void thread_m_axis_video_TDEST();
    void thread_m_axis_video_TID();
    void thread_m_axis_video_TKEEP();
    void thread_m_axis_video_TLAST();
    void thread_m_axis_video_TSTRB();
    void thread_m_axis_video_TUSER();
    void thread_m_axis_video_TVALID();
    void thread_m_axis_video_V_data_V_1_ack_in();
    void thread_m_axis_video_V_data_V_1_ack_out();
    void thread_m_axis_video_V_data_V_1_data_out();
    void thread_m_axis_video_V_data_V_1_sel();
    void thread_m_axis_video_V_data_V_1_vld_in();
    void thread_m_axis_video_V_data_V_1_vld_out();
    void thread_m_axis_video_V_dest_V_1_ack_out();
    void thread_m_axis_video_V_dest_V_1_data_out();
    void thread_m_axis_video_V_dest_V_1_sel();
    void thread_m_axis_video_V_dest_V_1_vld_in();
    void thread_m_axis_video_V_dest_V_1_vld_out();
    void thread_m_axis_video_V_id_V_1_ack_out();
    void thread_m_axis_video_V_id_V_1_data_out();
    void thread_m_axis_video_V_id_V_1_sel();
    void thread_m_axis_video_V_id_V_1_vld_in();
    void thread_m_axis_video_V_id_V_1_vld_out();
    void thread_m_axis_video_V_keep_V_1_ack_out();
    void thread_m_axis_video_V_keep_V_1_data_out();
    void thread_m_axis_video_V_keep_V_1_sel();
    void thread_m_axis_video_V_keep_V_1_vld_in();
    void thread_m_axis_video_V_keep_V_1_vld_out();
    void thread_m_axis_video_V_last_V_1_ack_in();
    void thread_m_axis_video_V_last_V_1_ack_out();
    void thread_m_axis_video_V_last_V_1_data_out();
    void thread_m_axis_video_V_last_V_1_load_A();
    void thread_m_axis_video_V_last_V_1_load_B();
    void thread_m_axis_video_V_last_V_1_sel();
    void thread_m_axis_video_V_last_V_1_state_cmp_full();
    void thread_m_axis_video_V_last_V_1_vld_in();
    void thread_m_axis_video_V_last_V_1_vld_out();
    void thread_m_axis_video_V_strb_V_1_ack_out();
    void thread_m_axis_video_V_strb_V_1_data_out();
    void thread_m_axis_video_V_strb_V_1_sel();
    void thread_m_axis_video_V_strb_V_1_vld_in();
    void thread_m_axis_video_V_strb_V_1_vld_out();
    void thread_m_axis_video_V_user_V_1_ack_in();
    void thread_m_axis_video_V_user_V_1_ack_out();
    void thread_m_axis_video_V_user_V_1_data_out();
    void thread_m_axis_video_V_user_V_1_load_A();
    void thread_m_axis_video_V_user_V_1_load_B();
    void thread_m_axis_video_V_user_V_1_sel();
    void thread_m_axis_video_V_user_V_1_state_cmp_full();
    void thread_m_axis_video_V_user_V_1_vld_in();
    void thread_m_axis_video_V_user_V_1_vld_out();
    void thread_or_ln21_fu_175_p2();
    void thread_select_ln14_fu_167_p3();
    void thread_select_ln16_fu_153_p3();
    void thread_tmp_last_V_fu_187_p2();
    void thread_tmp_user_V_fu_181_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
