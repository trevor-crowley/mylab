
################################################################
# START
################################################################

# CHANGE DESIGN NAME HERE
set design_name ex_sim

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
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

# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create interface ports
  set vid_io_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_io_out ]

  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list CONFIG.CLK_DOMAIN {design_sim_clk_wiz_0_0_clk_out1} CONFIG.FREQ_HZ {300000000} CONFIG.PHASE {0.0}  ] $aclk
  set locked [ create_bd_port -dir O locked ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_HIGH}  ] $reset

  # Create instance: axi_vip_0, and set properties
  set axi_vip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0 ]
  set_property -dict [ list \
                       CONFIG.HAS_RRESP {0} \
                       CONFIG.ID_WIDTH {0} \
                       CONFIG.INTERFACE_MODE {MASTER} \
                       CONFIG.PROTOCOL {AXI4LITE} \
                       CONFIG.READ_WRITE_MODE {WRITE_ONLY} \
                     ] $axi_vip_0

  # Create instance: processing_0_axi_periph, and set properties
  set processing_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_0_axi_periph ]
  set_property -dict [ list CONFIG.NUM_MI {3}  ] $processing_0_axi_periph

  # Create instance: rst_clk_wiz_0_148M, and set properties
  set rst_clk_wiz_0_148M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_148M ]
  set_property -dict [ list CONFIG.RESET_BOARD_INTERFACE {Custom} CONFIG.USE_BOARD_FLOW {true}  ] $rst_clk_wiz_0_148M

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH.VALUE_SRC USER \
                           CONFIG.C_ADDR_WIDTH {5} \
                           CONFIG.C_HAS_ASYNC_CLK {0} \
                           CONFIG.C_HYSTERESIS_LEVEL {8} \
                           CONFIG.C_NATIVE_COMPONENT_WIDTH {8} \
                           CONFIG.C_PIXELS_PER_CLOCK {1} \
                           CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {8} \
                           CONFIG.C_S_AXIS_VIDEO_FORMAT {2} \
                           CONFIG.C_VTG_MASTER_SLAVE {0}  ] $v_axi4s_vid_out_0

  # Create instance: v_tpg_1, and set properties
  set v_tpg_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_1 ]
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
                            CONFIG.SAMPLES_PER_CLOCK {1}  ] $v_tpg_1

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list CONFIG.GEN_F0_VBLANK_HEND {10} \
                            CONFIG.GEN_F0_VBLANK_HSTART {10} CONFIG.GEN_F0_VFRAME_SIZE {10} \
                            CONFIG.GEN_F0_VSYNC_HEND {10} CONFIG.GEN_F0_VSYNC_HSTART {10} \
                            CONFIG.GEN_F0_VSYNC_VEND {8} CONFIG.GEN_F0_VSYNC_VSTART {7} \
                            CONFIG.GEN_F1_VBLANK_HEND {1280} CONFIG.GEN_F1_VBLANK_HSTART {1280} \
                            CONFIG.GEN_F1_VFRAME_SIZE {750} CONFIG.GEN_F1_VSYNC_HEND {1280} \
                            CONFIG.GEN_F1_VSYNC_HSTART {1280} CONFIG.GEN_F1_VSYNC_VEND {729} \
                            CONFIG.GEN_F1_VSYNC_VSTART {724} CONFIG.GEN_HACTIVE_SIZE {10} \
                            CONFIG.GEN_HFRAME_SIZE {14} CONFIG.GEN_HSYNC_END {12} \
                            CONFIG.GEN_HSYNC_START {11} CONFIG.GEN_VACTIVE_SIZE {6} \
                            CONFIG.HAS_AXI4_LITE {true} CONFIG.VIDEO_MODE {Custom} \
                            CONFIG.enable_detection {false}  ] $v_tc_0

  # Create instance: v_tpg_0, and set properties
  set v_tpg_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_0 ]
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
                            CONFIG.SAMPLES_PER_CLOCK {1}  ] $v_tpg_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_vip_0_M_AXI [get_bd_intf_pins axi_vip_0/M_AXI] [get_bd_intf_pins processing_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_0_axi_periph_M00_AXI [get_bd_intf_pins processing_0_axi_periph/M00_AXI] [get_bd_intf_pins v_tpg_1/s_axi_CTRL]
  connect_bd_intf_net -intf_net processing_0_axi_periph_M01_AXI [get_bd_intf_pins processing_0_axi_periph/M01_AXI] [get_bd_intf_pins v_tpg_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net processing_0_axi_periph_M02_AXI [get_bd_intf_pins processing_0_axi_periph/M02_AXI] [get_bd_intf_pins v_tc_0/ctrl]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_ports vid_io_out] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tpg_1_m_axis_video [get_bd_intf_pins v_axi4s_vid_out_0/video_in] [get_bd_intf_pins v_tpg_1/m_axis_video]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_pins v_tpg_1/s_axis_video] [get_bd_intf_pins v_tpg_0/m_axis_video]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins axi_vip_0/aclk] [get_bd_pins processing_0_axi_periph/ACLK] [get_bd_pins processing_0_axi_periph/M00_ACLK] [get_bd_pins processing_0_axi_periph/M01_ACLK] [get_bd_pins processing_0_axi_periph/M02_ACLK] [get_bd_pins processing_0_axi_periph/S00_ACLK] [get_bd_pins rst_clk_wiz_0_148M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_tpg_1/ap_clk] [get_bd_pins v_tc_0/clk] [get_bd_pins v_tc_0/s_axi_aclk] [get_bd_pins v_tpg_0/ap_clk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins rst_clk_wiz_0_148M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_0_148M_interconnect_aresetn [get_bd_pins processing_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_148M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_148M_peripheral_aresetn [get_bd_pins axi_vip_0/aresetn] [get_bd_pins processing_0_axi_periph/M00_ARESETN] [get_bd_pins processing_0_axi_periph/M01_ARESETN] [get_bd_pins processing_0_axi_periph/M02_ARESETN] [get_bd_pins processing_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_148M/peripheral_aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tpg_1/ap_rst_n] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_tc_0/s_axi_aresetn] [get_bd_pins v_tpg_0/ap_rst_n]
  connect_bd_net -net v_axi4s_vid_out_0_locked [get_bd_ports locked] [get_bd_pins v_axi4s_vid_out_0/locked]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x44A10000 [get_bd_addr_spaces axi_vip_0/Master_AXI] [get_bd_addr_segs v_tpg_1/s_axi_CTRL/Reg] SEG_v_tpg_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x44A40000 [get_bd_addr_spaces axi_vip_0/Master_AXI] [get_bd_addr_segs v_tc_0/ctrl/Reg] SEG_v_tc_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x44A00000 [get_bd_addr_spaces axi_vip_0/Master_AXI] [get_bd_addr_segs v_tpg_0/s_axi_CTRL/Reg] SEG_v_tpg_0_Reg

  # Restore current instance
  current_bd_instance $oldCurInst

  regenerate_bd_layout
  save_bd_design
}
# End of create_root_design()

##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

