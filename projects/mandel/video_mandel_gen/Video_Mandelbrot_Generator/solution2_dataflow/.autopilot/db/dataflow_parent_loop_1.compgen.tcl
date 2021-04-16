# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name img_0_data_stream_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_0_data_stream_0_V \
    op interface \
    ports { img_0_data_stream_0_V_din { O 8 vector } img_0_data_stream_0_V_full_n { I 1 bit } img_0_data_stream_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name img_0_data_stream_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_0_data_stream_1_V \
    op interface \
    ports { img_0_data_stream_1_V_din { O 8 vector } img_0_data_stream_1_V_full_n { I 1 bit } img_0_data_stream_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name img_0_data_stream_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_0_data_stream_2_V \
    op interface \
    ports { img_0_data_stream_2_V_din { O 8 vector } img_0_data_stream_2_V_full_n { I 1 bit } img_0_data_stream_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name im_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_im_V \
    op interface \
    ports { im_V { I 18 vector } im_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name re_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_re_V \
    op interface \
    ports { re_V { I 18 vector } re_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name zoom_factor_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zoom_factor_V \
    op interface \
    ports { zoom_factor_V { I 18 vector } zoom_factor_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


