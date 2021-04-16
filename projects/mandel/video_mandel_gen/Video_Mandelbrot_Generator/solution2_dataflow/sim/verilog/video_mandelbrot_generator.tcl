
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/*]
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
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TDEST -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TID -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TLAST -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TUSER -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TSTRB -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TKEEP -into $m_axis_video_group -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TREADY -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TVALID -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/m_axis_video_TDATA -into $m_axis_video_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_video_mandelbrot_generator_top/AESL_inst_video_mandelbrot_generator/ap_clk -into $clockgroup
save_wave_config video_mandelbrot_generator.wcfg
run all
quit

