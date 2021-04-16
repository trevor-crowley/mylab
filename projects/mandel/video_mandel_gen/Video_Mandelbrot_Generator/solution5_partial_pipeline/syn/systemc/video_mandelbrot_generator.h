// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _video_mandelbrot_generator_HH_
#define _video_mandelbrot_generator_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "video_mandelbrot_gen_1.h"
#include "Loop_out_proc28.h"
#include "Mat2AXIvideo.h"
#include "fifo_w18_d2_A.h"
#include "fifo_w8_d2_A.h"
#include "start_for_Loop_out_proc28_U0.h"
#include "start_for_Mat2AXIvideo_U0.h"
#include "video_mandelbrot_generator_cmd_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CMD_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_CMD_DATA_WIDTH = 32>
struct video_mandelbrot_generator : public sc_module {
    // Port declarations 29
    sc_in< sc_logic > s_axi_cmd_AWVALID;
    sc_out< sc_logic > s_axi_cmd_AWREADY;
    sc_in< sc_uint<C_S_AXI_CMD_ADDR_WIDTH> > s_axi_cmd_AWADDR;
    sc_in< sc_logic > s_axi_cmd_WVALID;
    sc_out< sc_logic > s_axi_cmd_WREADY;
    sc_in< sc_uint<C_S_AXI_CMD_DATA_WIDTH> > s_axi_cmd_WDATA;
    sc_in< sc_uint<C_S_AXI_CMD_DATA_WIDTH/8> > s_axi_cmd_WSTRB;
    sc_in< sc_logic > s_axi_cmd_ARVALID;
    sc_out< sc_logic > s_axi_cmd_ARREADY;
    sc_in< sc_uint<C_S_AXI_CMD_ADDR_WIDTH> > s_axi_cmd_ARADDR;
    sc_out< sc_logic > s_axi_cmd_RVALID;
    sc_in< sc_logic > s_axi_cmd_RREADY;
    sc_out< sc_uint<C_S_AXI_CMD_DATA_WIDTH> > s_axi_cmd_RDATA;
    sc_out< sc_lv<2> > s_axi_cmd_RRESP;
    sc_out< sc_logic > s_axi_cmd_BVALID;
    sc_in< sc_logic > s_axi_cmd_BREADY;
    sc_out< sc_lv<2> > s_axi_cmd_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > interrupt;
    sc_out< sc_lv<24> > m_axis_video_TDATA;
    sc_out< sc_lv<3> > m_axis_video_TKEEP;
    sc_out< sc_lv<3> > m_axis_video_TSTRB;
    sc_out< sc_lv<1> > m_axis_video_TUSER;
    sc_out< sc_lv<1> > m_axis_video_TLAST;
    sc_out< sc_lv<1> > m_axis_video_TID;
    sc_out< sc_lv<1> > m_axis_video_TDEST;
    sc_out< sc_logic > m_axis_video_TVALID;
    sc_in< sc_logic > m_axis_video_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    video_mandelbrot_generator(sc_module_name name);
    SC_HAS_PROCESS(video_mandelbrot_generator);

    ~video_mandelbrot_generator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    video_mandelbrot_generator_cmd_s_axi<C_S_AXI_CMD_ADDR_WIDTH,C_S_AXI_CMD_DATA_WIDTH>* video_mandelbrot_generator_cmd_s_axi_U;
    video_mandelbrot_gen_1* video_mandelbrot_gen_1_U0;
    Loop_out_proc28* Loop_out_proc28_U0;
    Mat2AXIvideo* Mat2AXIvideo_U0;
    fifo_w18_d2_A* re_V_c_U;
    fifo_w18_d2_A* im_V_c_U;
    fifo_w18_d2_A* zoom_factor_V_c_U;
    fifo_w8_d2_A* img_0_data_stream_V_s_U;
    fifo_w8_d2_A* img_0_data_stream_V_1_U;
    fifo_w8_d2_A* img_0_data_stream_V_2_U;
    start_for_Loop_out_proc28_U0* start_for_Loop_out_proc28_U0_U;
    start_for_Mat2AXIvideo_U0* start_for_Mat2AXIvideo_U0_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<18> > re_V;
    sc_signal< sc_lv<18> > im_V;
    sc_signal< sc_lv<18> > zoom_factor_V;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_ap_start;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_ap_done;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_ap_continue;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_ap_idle;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_ap_ready;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_start_out;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_start_write;
    sc_signal< sc_lv<18> > video_mandelbrot_gen_1_U0_re_V_out_din;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_re_V_out_write;
    sc_signal< sc_lv<18> > video_mandelbrot_gen_1_U0_im_V_out_din;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_im_V_out_write;
    sc_signal< sc_lv<18> > video_mandelbrot_gen_1_U0_zoom_factor_V_out_din;
    sc_signal< sc_logic > video_mandelbrot_gen_1_U0_zoom_factor_V_out_write;
    sc_signal< sc_logic > Loop_out_proc28_U0_ap_start;
    sc_signal< sc_logic > Loop_out_proc28_U0_ap_done;
    sc_signal< sc_logic > Loop_out_proc28_U0_ap_continue;
    sc_signal< sc_logic > Loop_out_proc28_U0_ap_idle;
    sc_signal< sc_logic > Loop_out_proc28_U0_ap_ready;
    sc_signal< sc_logic > Loop_out_proc28_U0_start_out;
    sc_signal< sc_logic > Loop_out_proc28_U0_start_write;
    sc_signal< sc_logic > Loop_out_proc28_U0_im_V_read;
    sc_signal< sc_logic > Loop_out_proc28_U0_re_V_read;
    sc_signal< sc_logic > Loop_out_proc28_U0_zoom_factor_V_read;
    sc_signal< sc_lv<8> > Loop_out_proc28_U0_img_0_data_stream_V_s_din;
    sc_signal< sc_logic > Loop_out_proc28_U0_img_0_data_stream_V_s_write;
    sc_signal< sc_lv<8> > Loop_out_proc28_U0_img_0_data_stream_V_1_din;
    sc_signal< sc_logic > Loop_out_proc28_U0_img_0_data_stream_V_1_write;
    sc_signal< sc_lv<8> > Loop_out_proc28_U0_img_0_data_stream_V_2_din;
    sc_signal< sc_logic > Loop_out_proc28_U0_img_0_data_stream_V_2_write;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_lv<24> > Mat2AXIvideo_U0_m_axis_video_TDATA;
    sc_signal< sc_logic > Mat2AXIvideo_U0_m_axis_video_TVALID;
    sc_signal< sc_lv<3> > Mat2AXIvideo_U0_m_axis_video_TKEEP;
    sc_signal< sc_lv<3> > Mat2AXIvideo_U0_m_axis_video_TSTRB;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_m_axis_video_TUSER;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_m_axis_video_TLAST;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_m_axis_video_TID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_m_axis_video_TDEST;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_0_data_stream_V_s_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_0_data_stream_V_1_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_0_data_stream_V_2_read;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > re_V_c_full_n;
    sc_signal< sc_lv<18> > re_V_c_dout;
    sc_signal< sc_logic > re_V_c_empty_n;
    sc_signal< sc_logic > im_V_c_full_n;
    sc_signal< sc_lv<18> > im_V_c_dout;
    sc_signal< sc_logic > im_V_c_empty_n;
    sc_signal< sc_logic > zoom_factor_V_c_full_n;
    sc_signal< sc_lv<18> > zoom_factor_V_c_dout;
    sc_signal< sc_logic > zoom_factor_V_c_empty_n;
    sc_signal< sc_logic > img_0_data_stream_V_s_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_V_s_dout;
    sc_signal< sc_logic > img_0_data_stream_V_s_empty_n;
    sc_signal< sc_logic > img_0_data_stream_V_1_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_V_1_dout;
    sc_signal< sc_logic > img_0_data_stream_V_1_empty_n;
    sc_signal< sc_logic > img_0_data_stream_V_2_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_V_2_dout;
    sc_signal< sc_logic > img_0_data_stream_V_2_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<1> > start_for_Loop_out_proc28_U0_din;
    sc_signal< sc_logic > start_for_Loop_out_proc28_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Loop_out_proc28_U0_dout;
    sc_signal< sc_logic > start_for_Loop_out_proc28_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_din;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_dout;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_empty_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_write;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_Loop_out_proc28_U0_ap_continue();
    void thread_Loop_out_proc28_U0_ap_start();
    void thread_Mat2AXIvideo_U0_ap_continue();
    void thread_Mat2AXIvideo_U0_ap_start();
    void thread_Mat2AXIvideo_U0_start_full_n();
    void thread_Mat2AXIvideo_U0_start_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_m_axis_video_TDATA();
    void thread_m_axis_video_TDEST();
    void thread_m_axis_video_TID();
    void thread_m_axis_video_TKEEP();
    void thread_m_axis_video_TLAST();
    void thread_m_axis_video_TSTRB();
    void thread_m_axis_video_TUSER();
    void thread_m_axis_video_TVALID();
    void thread_start_for_Loop_out_proc28_U0_din();
    void thread_start_for_Mat2AXIvideo_U0_din();
    void thread_video_mandelbrot_gen_1_U0_ap_continue();
    void thread_video_mandelbrot_gen_1_U0_ap_start();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif