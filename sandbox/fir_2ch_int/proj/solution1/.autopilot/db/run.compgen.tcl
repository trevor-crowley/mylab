# This script segment is generated automatically by AutoPilot

# === IP Block run ===
set id 4
set name run
set cppname "run"
set corename Vivado_FIR
set op ipcall
set stage_num 0
set registered_input 0
set ipPortList { \
    {\
        name ap_clk \
        width 1 \
        signed 1 \
        dir IN \
        conntype clock \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_rst \
        width 1 \
        signed 1 \
        dir IN \
        conntype reset \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_start \
        width 1 \
        signed 1 \
        dir IN \
        conntype start \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_ce \
        width 1 \
        signed 1 \
        dir IN \
        conntype ce \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_done \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_idle \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_ready \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_continue \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name in_V_dout \
        width 16 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC_VECTOR \
        conn "" \
    }\
    {\
        name in_V_empty_n \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name in_V_read \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name out_V_din \
        width 40 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC_VECTOR \
        conn "" \
    }\
    {\
        name out_V_full_n \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name out_V_write \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
}

set ipParamList { \
    bestprecision {0} \
    channel_sequence {0} \
    clock_frequency {300.0} \
    coefficient_buffer_type {Automatic} \
    coefficient_file {no_coe_file_loaded} \
    coefficient_fractional_bits {16} \
    coefficient_reload {0} \
    coefficient_sets {1} \
    coefficient_sign {0} \
    coefficient_structure {0} \
    coefficient_width {16} \
    coefficientsource {Vector} \
    coefficientvector {-3.05176e-05, -3.05176e-05, -3.05176e-05, 0, 4.57764e-05, 6.10352e-05, 0, -7.62939e-05, -0.000106812, -3.05176e-05, 0.00012207, 0.000213623, 0.000106812, -0.000152588, -0.00038147, -0.000335693, 6.10352e-05, 0.000518799, 0.000640869, 0.000213623, -0.000518799, -0.000915527, -0.000518799, 0.000488281, 0.0012207, 0.000793457, -0.000732422, -0.00210571, -0.00169373, 0.000930786, 0.0040741, 0.00473022, 0.00088501, -0.00595093, -0.0107727, -0.00808716, 0.00323486, 0.0172272, 0.0229034, 0.0115051, -0.0154266, -0.0430145, -0.0485535, -0.0140686, 0.0610199, 0.155579, 0.23439, 0.26503, 0.23439, 0.155579, 0.0610199, -0.0140686, -0.0485535, -0.0430145, -0.0154266, 0.0115051, 0.0229034, 0.0172272, 0.00323486, -0.00808716, -0.0107727, -0.00595093, 0.00088501, 0.00473022, 0.0040741, 0.000930786, -0.00169373, -0.00210571, -0.000732422, 0.000793457, 0.0012207, 0.000488281, -0.000518799, -0.000915527, -0.000518799, 0.000213623, 0.000640869, 0.000518799, 6.10352e-05, -0.000335693, -0.00038147, -0.000152588, 0.000106812, 0.000213623, 0.00012207, -3.05176e-05, -0.000106812, -7.62939e-05, 0, 6.10352e-05, 4.57764e-05, 0, -3.05176e-05, -3.05176e-05, -3.05176e-05} \
    columnconfig {1} \
    data_buffer_type {Automatic} \
    data_fractional_bits {15} \
    data_has_tlast {Packet_Framing} \
    data_sign {0} \
    data_tuser_width {1} \
    data_width {16} \
    decimation_rate {1} \
    displayreloadorder {false} \
    filter_architecture {0} \
    filter_selection {1} \
    filter_type {0} \
    gen_mif_files {false} \
    gen_mif_from_coe {false} \
    gen_mif_from_spec {false} \
    gui_behaviour {Coregen} \
    has_aclken {true} \
    has_aresetn {true} \
    input_buffer_type {Automatic} \
    inter_column_pipe_length {4} \
    interpolation_rate {1} \
    m_data_has_tready {true} \
    m_data_has_tuser {Not_Required} \
    multi_column_support {Automatic} \
    num_reload_slots {1} \
    number_channels {2} \
    number_paths {1} \
    optimization_goal {0} \
    optimization_list {None} \
    optimization_selection {None} \
    output_buffer_type {Automatic} \
    output_rounding_mode {0} \
    output_width {40} \
    passband_max {0.5} \
    passband_min {0.0} \
    pattern_list {P4-0,P4-1,P4-2,P4-3,P4-4} \
    preference_for_other_storage {Automatic} \
    quantization {1} \
    rate_change_type {0} \
    ratespecification {1} \
    reload_file {no_coe_file_loaded} \
    reset_data_vector {true} \
    s_config_method {0} \
    s_config_sync_mode {0} \
    s_data_has_fifo {true} \
    s_data_has_tuser {Not_Required} \
    sample_frequency {0.001} \
    sampleperiod {1} \
    select_pattern {All} \
    stopband_max {1.0} \
    stopband_min {0.5} \
    target_clock_frequency {250} \
    zero_pack_factor {1} \
}

if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::IP::FIR::gen] == "::IP::FIR::gen"} {
eval "::IP::FIR::gen { \
    view sim \
    id ${id} \
    name ${name} \
    reset_level 1 \
    sync_rst true \
    corename ${corename} \
    op ${op} \
    stage_num ${stage_num} \
    registered_input ${registered_input} \
    ip_param_list \{${ipParamList}\} \
    ip_port_list \{${ipPortList}\} \
}"
} else {
puts "@W \[IMPL-117\] Cannot find ::IP::FIR::gen, check your lib."
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


if {${::AESL::PGuard_autocg_gen}} {
if {[info proc ::IP::FIR::gen] == "::IP::FIR::gen"} {
eval "::IP::FIR::gen { \
    view impl \
    id ${id} \
    name ${name} \
    reset_level 1 \
    sync_rst true \
    corename ${corename} \
    op ${op} \
    stage_num ${stage_num} \
    registered_input ${registered_input} \
    ip_param_list \{${ipParamList}\} \
    ip_port_list \{${ipPortList}\} \
}"
} else {
puts "@W \[IMPL-118\] Cannot find ::IP::FIR::gen, check your lib."
}
}


# === end of IP Block run ===
