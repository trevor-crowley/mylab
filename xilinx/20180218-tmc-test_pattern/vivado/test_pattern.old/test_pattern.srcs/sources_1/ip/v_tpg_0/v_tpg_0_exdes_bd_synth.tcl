
# Example design is currently supported for only KC705 board.
# The example script generator creates a project with existing
# setting - always override that to KC705 here.
set current_board_part [get_property BOARD_PART [current_project] ]
if { $current_board_part ne "xilinx.com:kc705:part0:1.5" } {
  set_property -quiet board_part xilinx.com:kc705:part0:1.5 [current_project]
}

# Change design name
set design_name ex_synth

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

# Add supported board's VLNV to this list
set supported_board_list [list xilinx.com:kc705:part0:1.5]
set current_board_part [get_property BOARD_PART [current_project] ]
if { [lsearch $supported_board_list $current_board_part] eq -1 } {
  set errMsg "ERROR: Example Design is currently available for only these boards - $supported_board_list\n. Please set a supported board from <Project Settings>, to open example design for this IP.\n"
  set nRet 1

} elseif { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES:
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################
proc safe { args } {
  catch { uplevel 1 $args }
}

set samples_per_clock {1}

create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0

safe apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "128KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "0" clk "New Clocking Wizard (100 MHz)" }  [get_bd_cells microblaze_0]
if { $samples_per_clock >= 4 } {
set_property -dict [list CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {150.000} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKFBOUT_MULT_F {5.250} CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.500} CONFIG.MMCM_CLKOUT1_DIVIDE {7} CONFIG.NUM_OUT_CLKS {2} CONFIG.CLKOUT1_JITTER {110.105} CONFIG.CLKOUT1_PHASE_ERROR {87.375} CONFIG.CLKOUT2_JITTER {101.763} CONFIG.CLKOUT2_PHASE_ERROR {87.375}] [get_bd_cells clk_wiz_1]
} else {
set_property -dict [list CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {300.000} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKFBOUT_MULT_F {4.500} CONFIG.MMCM_CLKOUT0_DIVIDE_F {9.000} CONFIG.MMCM_CLKOUT1_DIVIDE {3} CONFIG.NUM_OUT_CLKS {2} CONFIG.CLKOUT1_JITTER {110.629} CONFIG.CLKOUT1_PHASE_ERROR {91.235} CONFIG.CLKOUT2_JITTER {89.301} CONFIG.CLKOUT2_PHASE_ERROR {91.235}] [get_bd_cells clk_wiz_1]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 video_clk
if { $samples_per_clock >= 4 } {
set_property -dict [ list CONFIG.USE_DYN_RECONFIG {true} CONFIG.PRIM_SOURCE {No_buffer} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {148.5} CONFIG.MMCM_DIVCLK_DIVIDE {4} CONFIG.MMCM_CLKFBOUT_MULT_F {37.125} CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.250} CONFIG.CLKOUT1_JITTER {217.614} CONFIG.CLKOUT1_PHASE_ERROR {245.344}  ] [get_bd_cells video_clk]
} else {
set_property -dict [ list CONFIG.USE_DYN_RECONFIG {true} CONFIG.PRIM_SOURCE {No_buffer} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {297} CONFIG.MMCM_DIVCLK_DIVIDE {4} CONFIG.MMCM_CLKFBOUT_MULT_F {37.125} CONFIG.MMCM_CLKOUT0_DIVIDE_F {3.125} CONFIG.CLKOUT1_JITTER {195.606} CONFIG.CLKOUT1_PHASE_ERROR {245.344}  ] [get_bd_cells video_clk]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 hls_ip_reset
set_property -dict [ list CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_GPIO_WIDTH {1}  ] [get_bd_cells hls_ip_reset]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 video_lock_monitor
set_property -dict [ list CONFIG.C_ALL_INPUTS {1} CONFIG.C_GPIO_WIDTH {1}  ] [get_bd_cells video_lock_monitor]

create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_0
set_property -dict [ list CONFIG.HAS_AXI4S_SLAVE {0} \
CONFIG.MAX_COLS {4096} \
CONFIG.MAX_DATA_WIDTH {8} \
CONFIG.MAX_ROWS {2160} \
CONFIG.NUM_VIDEO_COMPONENTS {3} \
CONFIG.SOLID_COLOR {1} \
CONFIG.RAMP {1} \
CONFIG.COLOR_BAR {1} \
CONFIG.DISPLAY_PORT {1} \
CONFIG.COLOR_SWEEP {1} \
CONFIG.ZONE_PLATE {1} \
CONFIG.FOREGROUND {1} \
CONFIG.SAMPLES_PER_CLOCK {1}  ] [get_bd_cells v_tpg_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_1
set_property -dict [ list CONFIG.HAS_AXI4S_SLAVE {1} \
CONFIG.MAX_COLS {4096} \
CONFIG.MAX_DATA_WIDTH {8} \
CONFIG.MAX_ROWS {2160} \
CONFIG.NUM_VIDEO_COMPONENTS {3} \
CONFIG.SOLID_COLOR {1} \
CONFIG.RAMP {1} \
CONFIG.COLOR_BAR {1} \
CONFIG.DISPLAY_PORT {1} \
CONFIG.COLOR_SWEEP {1} \
CONFIG.ZONE_PLATE {1} \
CONFIG.FOREGROUND {1} \
CONFIG.SAMPLES_PER_CLOCK {1}  ] [get_bd_cells v_tpg_1]

create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0
set_property -dict [ list CONFIG.enable_detection {false} CONFIG.max_clocks_per_line {8192} ] [get_bd_cells v_tc_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0
set_property -dict [ list CONFIG.C_S_AXIS_VIDEO_FORMAT.VALUE_SRC USER CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH.VALUE_SRC USER  ] [get_bd_cells v_axi4s_vid_out_0]
set_property -dict [ list CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH.VALUE_SRC USER \
CONFIG.C_ADDR_WIDTH {10} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_HYSTERESIS_LEVEL {0} \
CONFIG.C_PIXELS_PER_CLOCK {1} \
CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {8} \
CONFIG.C_S_AXIS_VIDEO_FORMAT {2} ] [get_bd_cells v_axi4s_vid_out_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0

safe apply_board_connection -board_interface "rs232_uart" -ip_intf "axi_uartlite_0/UART" -diagram $design_name

connect_bd_net [get_bd_pins hls_ip_reset/gpio_io_o] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tpg_1/ap_rst_n] [get_bd_pins v_tpg_0/ap_rst_n]

safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "sys_diff_clock ( System differential clock ) " }  [get_bd_intf_pins clk_wiz_1/CLK_IN1_D]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out1 (100 MHz)" }  [get_bd_intf_pins axi_uartlite_0/S_AXI]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out1 (100 MHz)" }  [get_bd_intf_pins video_clk/s_axi_lite]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out1 (100 MHz)" }  [get_bd_intf_pins v_tc_0/ctrl]
if { $samples_per_clock >= 4 } {
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out2 (150 MHz)" }  [get_bd_intf_pins hls_ip_reset/S_AXI]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out2 (150 MHz)" }  [get_bd_intf_pins v_tpg_0/s_axi_CTRL]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out2 (150 MHz)" }  [get_bd_intf_pins v_tpg_1/s_axi_CTRL]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/video_clk/clk_out1 (148.5 MHz)" }  [get_bd_intf_pins video_lock_monitor/S_AXI]
} else {
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out2 (300 MHz)" }  [get_bd_intf_pins hls_ip_reset/S_AXI]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out2 (300 MHz)" }  [get_bd_intf_pins v_tpg_0/s_axi_CTRL]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_1/clk_out2 (300 MHz)" }  [get_bd_intf_pins v_tpg_1/s_axi_CTRL]
safe apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/video_clk/clk_out1 (297 MHz)" }  [get_bd_intf_pins video_lock_monitor/S_AXI]
}

safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( FPGA Reset ) " }  [get_bd_pins clk_wiz_1/reset]
safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( FPGA Reset ) " }  [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in]
if { $samples_per_clock >= 4 } {
safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( FPGA Reset ) " }  [get_bd_pins rst_clk_wiz_1_150M/ext_reset_in]
safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( FPGA Reset ) " }  [get_bd_pins rst_video_clk_148M/ext_reset_in]
} else {
safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( FPGA Reset ) " }  [get_bd_pins rst_clk_wiz_1_300M/ext_reset_in]
safe apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( FPGA Reset ) " }  [get_bd_pins rst_video_clk_297M/ext_reset_in]
}

connect_bd_intf_net [get_bd_intf_pins v_tpg_0/m_axis_video] [get_bd_intf_pins v_tpg_1/s_axis_video]
connect_bd_intf_net [get_bd_intf_pins v_tpg_1/m_axis_video] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
connect_bd_intf_net [get_bd_intf_pins v_tc_0/vtiming_out] [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in]

connect_bd_net [get_bd_pins video_clk/s_axi_aresetn] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]
connect_bd_net [get_bd_pins video_clk/clk_in1] [get_bd_pins clk_wiz_1/clk_out1]
connect_bd_net [get_bd_pins video_lock_monitor/gpio_io_i] [get_bd_pins v_axi4s_vid_out_0/locked]
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins clk_wiz_1/clk_out2]
connect_bd_net [get_bd_pins video_clk/clk_out1] [get_bd_pins v_tc_0/clk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk]


regenerate_bd_layout
save_bd_design
