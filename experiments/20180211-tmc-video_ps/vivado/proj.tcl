#-----------------------------------------------------------
# Vivado v2017.4 (64-bit)
# SW Build 2086221 on Fri Dec 15 20:54:30 MST 2017
# IP Build 2085800 on Fri Dec 15 22:25:07 MST 2017
# Start of session at: Sun Feb 11 09:13:38 2018
# Process ID: 9230
# Current directory: /home/trevor/mylab/experiments/20180211-tmc-video_ps/vivado
# Command line: vivado
# Log file: /home/trevor/mylab/experiments/20180211-tmc-video_ps/vivado/vivado.log
# Journal file: /home/trevor/mylab/experiments/20180211-tmc-video_ps/vivado/vivado.jou
#-----------------------------------------------------------

# start_gui
# create_project video_ps_1 /home/trevor/mylab/experiments/20180211-tmc-video_ps/vivado/video_ps_2 -part xc7a35tcpg236-1
# import_files -fileset constrs_1 -force -norecurse /home/trevor/mylab/Basys3/Basys3_Master.xdc
# create_bd_design "system"
# update_compile_order -fileset sources_1
# startgroup
# create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0
# apply_board_connection -board_interface "sys_clock" -ip_intf "clk_wiz_0/clock_CLK_IN1" -diagram "system" 
# endgroup

startgroup
set_property -dict [list CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {40} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKOUT1_DIVIDE {25} CONFIG.NUM_OUT_CLKS {2} CONFIG.CLKOUT2_JITTER {159.371} CONFIG.CLKOUT2_PHASE_ERROR {98.575}] [get_bd_cells clk_wiz_0]
endgroup
apply_board_connection -board_interface "reset" -ip_intf "clk_wiz_0/reset" -diagram "system" 
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
apply_board_connection -board_interface "push_buttons_4bits" -ip_intf "axi_gpio_0/GPIO" -diagram "system" 
endgroup
apply_board_connection -board_interface "seven_seg_led_an" -ip_intf "axi_gpio_0/GPIO2" -diagram "system" 
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1
apply_board_connection -board_interface "seven_seg_led_disp" -ip_intf "axi_gpio_1/GPIO" -diagram "system" 
endgroup
apply_board_connection -board_interface "led_16bits" -ip_intf "axi_gpio_1/GPIO2" -diagram "system" 
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2
apply_board_connection -board_interface "dip_switches_16bits" -ip_intf "axi_gpio_2/GPIO" -diagram "system" 
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0
apply_board_connection -board_interface "usb_uart" -ip_intf "axi_uartlite_0/UART" -diagram "system" 
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0
endgroup
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {preset "None" local_mem "16KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "0" clk "/clk_wiz_0/clk_out1 (100 MHz)" }  [get_bd_cells microblaze_0]
endgroup
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "New AXI Interconnect" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_gpio_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "New AXI Interconnect" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_gpio_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "New AXI Interconnect" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_gpio_2/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "New AXI Interconnect" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_uartlite_0/S_AXI]
endgroup
regenerate_bd_layout
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0
endgroup
set_property -dict [list CONFIG.HAS_AXI4_LITE {false} CONFIG.enable_detection {false}] [get_bd_cells v_tc_0]
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0
endgroup
set_property -dict [list CONFIG.C_HAS_ASYNC_CLK {1}] [get_bd_cells v_axi4s_vid_out_0]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins v_tpg_0/s_axi_CTRL]
set_property location {2 495 -60} [get_bd_cells v_tc_0]
set_property location {5 1677 717} [get_bd_cells v_axi4s_vid_out_0]
set_property location {4 1292 738} [get_bd_cells v_tc_0]
startgroup
set_property -dict [list CONFIG.CLK_OUT1_PORT {clk_app} CONFIG.CLK_OUT2_PORT {clk_pix}] [get_bd_cells clk_wiz_0]
endgroup
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config {Clk "/clk_wiz_0/clk_app (100 MHz)" }  [get_bd_pins axi_gpio_0/s_axi_aclk]
endgroup
regenerate_bd_layout
set_property location {5 1514 912} [get_bd_cells v_axi4s_vid_out_0]
set_property location {4 1280 937} [get_bd_cells v_axi4s_vid_out_0]
set_property location {5.5 1984 960} [get_bd_cells v_axi4s_vid_out_0]
set_property location {6 1879 617} [get_bd_cells v_axi4s_vid_out_0]
connect_bd_net [get_bd_pins v_tpg_0/interrupt] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tdata]
delete_bd_objs [get_bd_nets v_tpg_0_interrupt]
connect_bd_intf_net [get_bd_intf_pins v_tpg_0/m_axis_video] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
connect_bd_net [get_bd_pins clk_wiz_0/clk_pix] [get_bd_pins v_tc_0/clk]
set_property location {2 510 -88} [get_bd_cells v_tc_0]
connect_bd_intf_net [get_bd_intf_pins v_tc_0/vtiming_out] [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in]
connect_bd_net [get_bd_pins clk_wiz_0/clk_pix] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_pix] [get_bd_pins v_axi4s_vid_out_0/aclk]
disconnect_bd_net /clk_wiz_0_clk_pix [get_bd_pins v_axi4s_vid_out_0/aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_app] [get_bd_pins v_axi4s_vid_out_0/aclk]
startgroup
make_bd_pins_external  [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
endgroup
startgroup
make_bd_pins_external  [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
endgroup
set_property name Hsync [get_bd_ports vid_hsync_0]
set_property name Vsync [get_bd_ports vid_vsync_0]
regenerate_bd_layout
validate_bd_design
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
startgroup
make_bd_pins_external  [get_bd_pins v_axi4s_vid_out_0/vid_data]
endgroup
delete_bd_objs [get_bd_nets v_axi4s_vid_out_0_vid_data]
set_property name vgaReg [get_bd_ports vid_data_0]
regenerate_bd_layout
set_property location {2165 558} [get_bd_ports vgaReg]
validate_bd_design
copy_bd_objs /  [get_bd_ports {vgaReg}]
copy_bd_objs /  [get_bd_ports {vgaReg}]
set_property location {2079 35} [get_bd_ports vgaReg2]
set_property location {2149 591} [get_bd_ports vgaReg1]
set_property location {2236 605} [get_bd_ports vgaReg2]
set_property location {2200 585} [get_bd_ports vgaReg2]
set_property location {2255 597} [get_bd_ports vgaReg1]
set_property name vgaRed [get_bd_ports vgaReg]
set_property name vgaBlue [get_bd_ports vgaReg2]
set_property name vgaGreen [get_bd_ports vgaReg1]
regenerate_bd_layout
validate_bd_design
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0
endgroup
set_property -dict [list CONFIG.DIN_WIDTH {24} CONFIG.DIN_TO {0} CONFIG.DIN_FROM {0}] [get_bd_cells xlslice_0]
set_property name xlslice_red [get_bd_cells xlslice_0]
copy_bd_objs /  [get_bd_cells {xlslice_red}]
copy_bd_objs /  [get_bd_cells {xlslice_red}]
set_property location {5 1559 -169} [get_bd_cells xlslice_red2]
set_property location {5 1585 -78} [get_bd_cells xlslice_red1]
set_property name xlslice_blue [get_bd_cells xlslice_red2]
set_property name xlslice_green [get_bd_cells xlslice_red1]
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/vid_data] [get_bd_pins xlslice_red/Din]
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/vid_data] [get_bd_pins xlslice_blue/Din]
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/vid_data] [get_bd_pins xlslice_green/Din]
connect_bd_net [get_bd_ports vgaRed] [get_bd_pins xlslice_red/Dout]
connect_bd_net [get_bd_ports vgaBlue] [get_bd_pins xlslice_blue/Dout]
connect_bd_net [get_bd_ports vgaGreen] [get_bd_pins xlslice_green/Dout]
regenerate_bd_layout
startgroup
set_property -dict [list CONFIG.DIN_FROM {3} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_red]
endgroup
startgroup
set_property -dict [list CONFIG.DIN_TO {4} CONFIG.DIN_FROM {7} CONFIG.DIN_FROM {7} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_green]
endgroup
startgroup
set_property -dict [list CONFIG.DIN_TO {12} CONFIG.DIN_FROM {15} CONFIG.DIN_FROM {15} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_blue]
endgroup
startgroup
endgroup
startgroup
set_property -dict [list CONFIG.DIN_TO {4} CONFIG.DIN_FROM {7} CONFIG.DIN_FROM {7} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_red]
endgroup
startgroup
set_property -dict [list CONFIG.DIN_TO {12} CONFIG.DIN_FROM {15} CONFIG.DIN_FROM {15} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_green]
endgroup
startgroup
set_property -dict [list CONFIG.DIN_TO {20} CONFIG.DIN_FROM {23} CONFIG.DIN_FROM {23} CONFIG.DOUT_WIDTH {4}] [get_bd_cells xlslice_blue]
endgroup
regenerate_bd_layout
startgroup
create_bd_port -dir O vid_active_video
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/vid_active_video] [get_bd_ports vid_active_video]
endgroup
validate_bd_design
regenerate_bd_layout
startgroup
create_bd_port -dir O locked
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/locked] [get_bd_ports locked]
endgroup
startgroup
create_bd_port -dir O -from 31 -to 0 status
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/status] [get_bd_ports status]
endgroup
startgroup
create_bd_port -dir O overflow
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/overflow] [get_bd_ports overflow]
endgroup
startgroup
create_bd_port -dir O underflow
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/underflow] [get_bd_ports underflow]
endgroup
validate_bd_design
