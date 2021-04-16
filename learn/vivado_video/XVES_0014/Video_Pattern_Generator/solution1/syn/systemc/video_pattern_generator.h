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
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<24> > m_axis_video_V_data_V_din;
    sc_in< sc_logic > m_axis_video_V_data_V_full_n;
    sc_out< sc_logic > m_axis_video_V_data_V_write;
    sc_out< sc_lv<3> > m_axis_video_V_keep_V_din;
    sc_in< sc_logic > m_axis_video_V_keep_V_full_n;
    sc_out< sc_logic > m_axis_video_V_keep_V_write;
    sc_out< sc_lv<3> > m_axis_video_V_strb_V_din;
    sc_in< sc_logic > m_axis_video_V_strb_V_full_n;
    sc_out< sc_logic > m_axis_video_V_strb_V_write;
    sc_out< sc_lv<1> > m_axis_video_V_user_V_din;
    sc_in< sc_logic > m_axis_video_V_user_V_full_n;
    sc_out< sc_logic > m_axis_video_V_user_V_write;
    sc_out< sc_lv<1> > m_axis_video_V_last_V_din;
    sc_in< sc_logic > m_axis_video_V_last_V_full_n;
    sc_out< sc_logic > m_axis_video_V_last_V_write;
    sc_out< sc_lv<1> > m_axis_video_V_id_V_din;
    sc_in< sc_logic > m_axis_video_V_id_V_full_n;
    sc_out< sc_logic > m_axis_video_V_id_V_write;
    sc_out< sc_lv<1> > m_axis_video_V_dest_V_din;
    sc_in< sc_logic > m_axis_video_V_dest_V_full_n;
    sc_out< sc_logic > m_axis_video_V_dest_V_write;


    // Module declarations
    video_pattern_generator(sc_module_name name);
    SC_HAS_PROCESS(video_pattern_generator);

    ~video_pattern_generator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > m_axis_video_V_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln15_fu_118_p2;
    sc_signal< sc_logic > m_axis_video_V_keep_V_blk_n;
    sc_signal< sc_logic > m_axis_video_V_strb_V_blk_n;
    sc_signal< sc_logic > m_axis_video_V_user_V_blk_n;
    sc_signal< sc_logic > m_axis_video_V_last_V_blk_n;
    sc_signal< sc_logic > m_axis_video_V_id_V_blk_n;
    sc_signal< sc_logic > m_axis_video_V_dest_V_blk_n;
    sc_signal< sc_lv<10> > i_fu_112_p2;
    sc_signal< sc_lv<10> > i_reg_158;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > j_fu_124_p2;
    sc_signal< sc_logic > io_acc_block_signal_op36;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<10> > i_0_reg_83;
    sc_signal< sc_lv<10> > j_0_reg_95;
    sc_signal< sc_lv<1> > icmp_ln13_fu_106_p2;
    sc_signal< sc_lv<10> > or_ln18_fu_130_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<10> ap_const_lv10_258;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_320;
    static const sc_lv<10> ap_const_lv10_31F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_fu_112_p2();
    void thread_icmp_ln13_fu_106_p2();
    void thread_icmp_ln15_fu_118_p2();
    void thread_io_acc_block_signal_op36();
    void thread_j_fu_124_p2();
    void thread_m_axis_video_V_data_V_blk_n();
    void thread_m_axis_video_V_data_V_din();
    void thread_m_axis_video_V_data_V_write();
    void thread_m_axis_video_V_dest_V_blk_n();
    void thread_m_axis_video_V_dest_V_din();
    void thread_m_axis_video_V_dest_V_write();
    void thread_m_axis_video_V_id_V_blk_n();
    void thread_m_axis_video_V_id_V_din();
    void thread_m_axis_video_V_id_V_write();
    void thread_m_axis_video_V_keep_V_blk_n();
    void thread_m_axis_video_V_keep_V_din();
    void thread_m_axis_video_V_keep_V_write();
    void thread_m_axis_video_V_last_V_blk_n();
    void thread_m_axis_video_V_last_V_din();
    void thread_m_axis_video_V_last_V_write();
    void thread_m_axis_video_V_strb_V_blk_n();
    void thread_m_axis_video_V_strb_V_din();
    void thread_m_axis_video_V_strb_V_write();
    void thread_m_axis_video_V_user_V_blk_n();
    void thread_m_axis_video_V_user_V_din();
    void thread_m_axis_video_V_user_V_write();
    void thread_or_ln18_fu_130_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
