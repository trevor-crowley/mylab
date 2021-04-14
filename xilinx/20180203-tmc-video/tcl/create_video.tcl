# create board
create_project video . -part xc7a35tcpg236-1
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
add_files -fileset constrs_1 -norecurse /home/trevor/mylab/Basys3/Basys3_Master.xdc

# create block
create_bd_design "system"
update_compile_order -fileset sources_1

# add clock
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0
endgroup

# add microblaze
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {preset "None" local_mem "16KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "1" clk "/clk_wiz_0/clk_out1 (100 MHz)" }  [get_bd_cells microblaze_0]

# add components

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2


# connections
apply_board_connection -board_interface "sys_clock" -ip_intf "clk_wiz_0/clock_CLK_IN1" -diagram "system" 
apply_board_connection -board_interface "usb_uart" -ip_intf "axi_uartlite_0/UART" -diagram "system" 
apply_board_connection -board_interface "dip_switches_16bits" -ip_intf "axi_gpio_0/GPIO" -diagram "system" 
apply_board_connection -board_interface "reset" -ip_intf "clk_wiz_0/reset" -diagram "system" 
apply_board_connection -board_interface "led_16bits" -ip_intf "axi_gpio_0/GPIO2" -diagram "system" 
apply_board_connection -board_interface "seven_seg_led_an" -ip_intf "axi_gpio_1/GPIO2" -diagram "system" 
apply_board_connection -board_interface "push_buttons_4bits" -ip_intf "axi_gpio_1/GPIO" -diagram "system" 
apply_board_connection -board_interface "seven_seg_led_disp" -ip_intf "axi_gpio_2/GPIO" -diagram "system" 

startgroup
apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "reset ( Reset Signal (BTNC) ) " }  [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_uartlite_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_gpio_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_gpio_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins axi_gpio_2/S_AXI]
endgroup

#add video
create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0
set_property location {3 1392 -539} [get_bd_cells v_tc_0]
create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_0

startgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins v_tc_0/ctrl]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" intc_ip "/microblaze_0_axi_periph" Clk_xbar "Auto" Clk_master "Auto" Clk_slave "Auto" }  [get_bd_intf_pins v_tpg_0/s_axi_CTRL]
endgroup

