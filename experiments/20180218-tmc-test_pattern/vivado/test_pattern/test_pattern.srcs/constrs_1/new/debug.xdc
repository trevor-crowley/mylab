set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_axi4s_vid_out_0_locked]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tpg_1_m_axis_video_TREADY]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/vid_io_out_0_active_video]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/vid_io_out_0_hsync]

set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tpg_1_m_axis_video_TVALID]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tpg_1_m_axis_video_TLAST]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tc_0_vtiming_out_HSYNC]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tc_0_vtiming_out_VSYNC]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tc_0_vtiming_out_ACTIVE_VIDEO]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tpg_0_m_axis_video_TREADY]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tpg_0_m_axis_video_TLAST]
set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/v_tpg_0_m_axis_video_TVALID]



set_property MARK_DEBUG true [get_nets design_1_wrapper_i/design_1_i/vid_io_out_0_vsync]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_wrapper_i/design_1_i/clk_wiz_0/inst/clk_vid]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list design_1_wrapper_i/design_1_i/v_axi4s_vid_out_0_locked]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list design_1_wrapper_i/design_1_i/clk_wiz_0/inst/clk_ap]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list design_1_wrapper_i/design_1_i/v_tpg_0_m_axis_video_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list design_1_wrapper_i/design_1_i/v_tc_0_vtiming_out_ACTIVE_VIDEO]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_wrapper_i/design_1_i/v_tc_0_vtiming_out_HSYNC]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_wrapper_i/design_1_i/v_tc_0_vtiming_out_VSYNC]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_wrapper_i/design_1_i/vid_io_out_0_active_video]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_wrapper_i/design_1_i/vid_io_out_0_hsync]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list design_1_wrapper_i/design_1_i/vid_io_out_0_vsync]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list design_1_wrapper_i/design_1_i/v_tpg_0_m_axis_video_TREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 1 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list design_1_wrapper_i/design_1_i/v_tpg_0_m_axis_video_TVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 1 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list design_1_wrapper_i/design_1_i/v_tpg_1_m_axis_video_TLAST]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 1 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list design_1_wrapper_i/design_1_i/v_tpg_1_m_axis_video_TREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 1 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list design_1_wrapper_i/design_1_i/v_tpg_1_m_axis_video_TVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_clk_ap]
