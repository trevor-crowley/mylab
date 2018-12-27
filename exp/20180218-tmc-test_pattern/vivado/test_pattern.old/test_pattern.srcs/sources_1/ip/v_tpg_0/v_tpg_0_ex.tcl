#-------------------------------------------------------------
# Generated Example Tcl script for IP 'v_tpg_0' (xilinx.com:ip:v_tpg:7.0)
#-------------------------------------------------------------

# Declare source IP directory
set srcIpDir "/home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/test_pattern/test_pattern.srcs/sources_1/ip/v_tpg_0"

# Create project
puts "INFO: \[open_example_project\] Creating new example project..."
create_project -name v_tpg_0_ex -force
set_property part xc7a35tcpg236-1 [current_project]
set_property target_language verilog [current_project]
set_property simulator_language MIXED [current_project]
# Set up imports directory
set projDir [get_property DIRECTORY [current_project]]
set importDir [file join $projDir imports]
file mkdir $importDir

set_property coreContainer.enable false [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set returnCode 0

# Set up pre-compilation paths

# Import the original IP (excluding example files)
puts "INFO: \[open_example_project\] Importing original IP ..."
import_ip -files [list [file join $srcIpDir v_tpg_0.xci]] -name v_tpg_0
reset_target {open_example} [get_ips v_tpg_0]

# Generate the IP
proc _filter_supported_targets {targets ip} {
  set res {}
  set all [get_property SUPPORTED_TARGETS $ip]
  foreach target $targets {
    lappend res {*}[lsearch -all -inline -nocase $all $target]
  }
  return $res
}
puts "INFO: \[open_example_project\] Generating the example project IP ..."
generate_target -quiet [_filter_supported_targets {instantiation_template synthesis simulation implementation shared_logic} [get_ips v_tpg_0]] [get_ips v_tpg_0]

# Add example synthesis HDL files
puts "INFO: \[open_example_project\] Adding example synthesis HDL files ..."
add_files -quiet -copy_to $importDir -fileset [current_fileset] \
  [list [file join $srcIpDir v_tpg_0/hdl/v_tpg_0_top.v]]
set_property USED_IN_SIMULATION false [get_files [list [file join $importDir v_tpg_0_top.v]]]

# Add example simulation HDL files
puts "INFO: \[open_example_project\] Adding simulation HDL files ..."
if { [catch {current_fileset -simset} exc] } { create_fileset -simset sim_1 }
add_files -quiet -copy_to $importDir -fileset [current_fileset -simset] \
  [list [file join $srcIpDir v_tpg_0/simulation/v_tpg_0_exdes_tb.sv]]
set_property FILE_TYPE SystemVerilog [get_files [list [file join $importDir v_tpg_0_exdes_tb.sv]]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir v_tpg_0_exdes_tb.sv]]]

# Set top
set_property TOP [lindex [find_top] 0] [current_fileset]

puts "INFO: \[open_example_project\] Sourcing example extension scripts ..."
# Source script extension file(s)
if {[catch {source [file join $srcIpDir v_tpg_0_exdes_bd_synth.tcl]} errMsg]} {
  puts "ERROR: \[open_example_project\] Open Example Project failed: Error encountered while sourcing custom IP example design script."
  puts "$errorInfo"
  error "ERROR: see log file for details."
  incr returnCode
}
if {[catch {source [file join $srcIpDir v_tpg_0_exdes_bd_sim.tcl]} errMsg]} {
  puts "ERROR: \[open_example_project\] Open Example Project failed: Error encountered while sourcing custom IP example design script."
  puts "$errorInfo"
  error "ERROR: see log file for details."
  incr returnCode
}
if {[catch {source [file join $srcIpDir v_tpg_0_exdes.tcl]} errMsg]} {
  puts "ERROR: \[open_example_project\] Open Example Project failed: Error encountered while sourcing custom IP example design script."
  puts "$errorInfo"
  error "ERROR: see log file for details."
  incr returnCode
}

# Update compile order
update_compile_order -fileset [current_fileset]
update_compile_order -fileset [current_fileset -simset]
set tops [list]
foreach tfile [ get_files -filter {name=~"*.xci" || name=~"*.bd"}] { if { [lsearch [list_property $tfile] PARENT_COMPOSITE_FILE ] == -1} {lappend tops $tfile} }
puts "INFO: \[open_example_project\] Rebuilding all the top level IPs ..."
generate_target all $tops
export_ip_user_files -force

set dfile [file join $srcIpDir oepdone.txt]
if { [ catch { set doneFile [open $dfile w] } ] } {
} else { 
  puts $doneFile "Open Example Project DONE"
  close $doneFile
}
if { $returnCode != 0 } {
  puts "ERROR: \[open_example_project\] Problems were encountered while executing the example design script, please review the log file."
  error "ERROR: See log file for details."
  incr returnCode
} else {
  puts "INFO: \[open_example_project\] Open Example Project completed"
}
