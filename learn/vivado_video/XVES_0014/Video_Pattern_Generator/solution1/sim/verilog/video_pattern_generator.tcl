
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set m_axis_video_group [add_wave_group m_axis_video(fifo) -into $coutputgroup]
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_dest_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_dest_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_dest_V_din -into $m_axis_video_group -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_id_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_id_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_id_V_din -into $m_axis_video_group -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_last_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_last_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_last_V_din -into $m_axis_video_group -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_user_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_user_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_user_V_din -into $m_axis_video_group -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_strb_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_strb_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_strb_V_din -into $m_axis_video_group -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_keep_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_keep_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_keep_V_din -into $m_axis_video_group -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_data_V_write -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_data_V_full_n -into $m_axis_video_group -color #ffff00 -radix hex
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/m_axis_video_V_data_V_din -into $m_axis_video_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/ap_start -into $blocksiggroup
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/ap_done -into $blocksiggroup
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/ap_idle -into $blocksiggroup
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_video_pattern_generator_top/AESL_inst_video_pattern_generator/ap_clk -into $clockgroup
save_wave_config video_pattern_generator.wcfg
run all
quit

