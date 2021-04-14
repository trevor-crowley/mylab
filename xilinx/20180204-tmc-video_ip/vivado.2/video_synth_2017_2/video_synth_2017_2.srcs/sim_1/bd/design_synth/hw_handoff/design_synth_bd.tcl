
################################################################
# This is a generated script based on design: design_synth
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_synth_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a50tcsg324-1
}


# CHANGE DESIGN NAME HERE
set design_name design_synth

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

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_video [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_video ]
  set vtiming_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:video_timing_rtl:2.0 vtiming_out ]

  # Create ports
  set fsync_out [ create_bd_port -dir O -from 0 -to 0 fsync_out ]
  set interrupt [ create_bd_port -dir O -type intr interrupt ]

  # Create instance: sim_clk_gen_ap, and set properties
  set sim_clk_gen_ap [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 sim_clk_gen_ap ]

  # Create instance: sim_clk_gen_pix, and set properties
  set sim_clk_gen_pix [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 sim_clk_gen_pix ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {40000000} \
 ] $sim_clk_gen_pix

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
CONFIG.GEN_F0_VBLANK_HEND {800} \
CONFIG.GEN_F0_VBLANK_HSTART {800} \
CONFIG.GEN_F0_VFRAME_SIZE {628} \
CONFIG.GEN_F0_VSYNC_HEND {800} \
CONFIG.GEN_F0_VSYNC_HSTART {800} \
CONFIG.GEN_F0_VSYNC_VEND {604} \
CONFIG.GEN_F0_VSYNC_VSTART {600} \
CONFIG.GEN_F1_VBLANK_HEND {800} \
CONFIG.GEN_F1_VBLANK_HSTART {800} \
CONFIG.GEN_F1_VFRAME_SIZE {628} \
CONFIG.GEN_F1_VSYNC_HEND {800} \
CONFIG.GEN_F1_VSYNC_HSTART {800} \
CONFIG.GEN_F1_VSYNC_VEND {604} \
CONFIG.GEN_F1_VSYNC_VSTART {600} \
CONFIG.GEN_HACTIVE_SIZE {800} \
CONFIG.GEN_HFRAME_SIZE {1056} \
CONFIG.GEN_HSYNC_END {968} \
CONFIG.GEN_HSYNC_START {840} \
CONFIG.GEN_VACTIVE_SIZE {600} \
CONFIG.HAS_AXI4_LITE {false} \
CONFIG.VIDEO_MODE {800x600p} \
CONFIG.active_video_generation {true} \
CONFIG.enable_detection {false} \
CONFIG.horizontal_blank_generation {true} \
CONFIG.vertical_blank_generation {true} \
 ] $v_tc_0

  # Create instance: v_tpg_0, and set properties
  set v_tpg_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_0 ]
  set_property -dict [ list \
CONFIG.COLOR_SWEEP {0} \
CONFIG.DISPLAY_PORT {0} \
CONFIG.FOREGROUND {0} \
CONFIG.RAMP {0} \
CONFIG.SOLID_COLOR {0} \
CONFIG.ZONE_PLATE {0} \
 ] $v_tpg_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {1} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_ports vtiming_out] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_ports m_axis_video] [get_bd_intf_pins v_tpg_0/m_axis_video]

  # Create port connections
  connect_bd_net -net sim_clk_gen_ap_clk [get_bd_pins sim_clk_gen_ap/clk] [get_bd_pins v_tpg_0/ap_clk]
  connect_bd_net -net sim_clk_gen_ap_sync_rst [get_bd_pins sim_clk_gen_ap/sync_rst] [get_bd_pins v_tpg_0/ap_rst_n]
  connect_bd_net -net sim_clk_gen_pix_clk [get_bd_pins sim_clk_gen_pix/clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net sim_clk_gen_pix_sync_rst [get_bd_pins sim_clk_gen_pix/sync_rst] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net v_tc_0_fsync_out [get_bd_ports fsync_out] [get_bd_pins v_tc_0/fsync_out]
  connect_bd_net -net v_tpg_0_interrupt [get_bd_ports interrupt] [get_bd_pins v_tpg_0/interrupt]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/gen_clken] [get_bd_pins v_tpg_0/s_axi_CTRL_ARVALID] [get_bd_pins v_tpg_0/s_axi_CTRL_AWVALID] [get_bd_pins v_tpg_0/s_axi_CTRL_BREADY] [get_bd_pins v_tpg_0/s_axi_CTRL_RREADY] [get_bd_pins v_tpg_0/s_axi_CTRL_WSTRB] [get_bd_pins v_tpg_0/s_axi_CTRL_WVALID] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


