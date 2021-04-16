
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set re__im__zoom_factor__return_group [add_wave_group re__im__zoom_factor__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/interrupt -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_BRESP -into $re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_BREADY -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_BVALID -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_RRESP -into $re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_RDATA -into $re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_RREADY -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_RVALID -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_ARREADY -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_ARVALID -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_ARADDR -into $re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_WSTRB -into $re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_WDATA -into $re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_WREADY -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_WVALID -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_AWREADY -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_AWVALID -into $re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/s_axi_cmd_AWADDR -into $re__im__zoom_factor__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set m_axis_video_group [add_wave_group m_axis_video(axis) -into $coutputgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TREADY -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TVALID -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TDEST -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TID -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TLAST -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TUSER -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TSTRB -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TKEEP -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TDATA -into $m_axis_video_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_done -into $blocksiggroup
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_idle -into $blocksiggroup
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_ready -into $blocksiggroup
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_video_mandelbrot_generator_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/LENGTH_m_axis_video_V_dest_V -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_re__im__zoom_factor__return_group [add_wave_group re__im__zoom_factor__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_video_mandelbrot_generator_top/cmd_INTERRUPT -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_BRESP -into $tb_re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_BREADY -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_BVALID -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_RRESP -into $tb_re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_RDATA -into $tb_re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_RREADY -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_RVALID -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_ARREADY -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_ARVALID -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_ARADDR -into $tb_re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_WSTRB -into $tb_re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_WDATA -into $tb_re__im__zoom_factor__return_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_WREADY -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_WVALID -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_AWREADY -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_AWVALID -into $tb_re__im__zoom_factor__return_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/cmd_AWADDR -into $tb_re__im__zoom_factor__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_m_axis_video_group [add_wave_group m_axis_video(axis) -into $tbcoutputgroup]
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TREADY -into $tb_m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TVALID -into $tb_m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TDEST -into $tb_m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TID -into $tb_m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TLAST -into $tb_m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TUSER -into $tb_m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TSTRB -into $tb_m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TKEEP -into $tb_m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/m_axis_video_TDATA -into $tb_m_axis_video_group -radix hex
save_wave_config video_mandelbrot_generator.wcfg
run all
quit

