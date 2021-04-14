
# create project
create_project mandelbrot_frame_1 /home/trevor/mylab/experiments/20180311-tmc-mandelframe/vivado/mandelbrot_frame_1 -part xc7a35tcpg236-1
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
import_files -fileset constrs_1 -force -norecurse /home/trevor/mylab/Basys3/Basys3_Master.xdc

# setup ip
set_property  ip_repo_paths  /home/trevor/mylab/vivado-library/ip/mandelbrot_frame/solution1/impl/ip [current_project]
update_ip_catalog


# create design
create_bd_design "design_1"


# add IP

# mandelframe
startgroup
create_bd_cell -type ip -vlnv tmc:user.org:mandelbrot_frame:0.1 mandelbrot_frame_0
endgroup

# timer
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0
endgroup

# video out
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0
endgroup

# clock
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0
apply_board_connection -board_interface "sys_clock" -ip_intf "clk_wiz_0/clock_CLK_IN1" -diagram "design_1" 
endgroup

# reset
startgroup
apply_board_connection -board_interface "reset" -ip_intf "/clk_wiz_0/reset" -diagram "design_1" 
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
apply_board_connection -board_interface "reset" -ip_intf "proc_sys_reset_0/ext_reset" -diagram "design_1" 
endgroup

## Config blocks

# set clocks
startgroup
set_property -dict [list CONFIG.CLKOUT2_USED {true} CONFIG.CLK_OUT1_PORT {clk_ap} CONFIG.CLK_OUT2_PORT {clk_vid} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {450} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {25} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKFBOUT_MULT_F {9.000} CONFIG.MMCM_CLKOUT0_DIVIDE_F {2.000} CONFIG.MMCM_CLKOUT1_DIVIDE {36} CONFIG.NUM_OUT_CLKS {2} CONFIG.CLKOUT1_JITTER {103.830} CONFIG.CLKOUT1_PHASE_ERROR {105.461} CONFIG.CLKOUT2_JITTER {183.467} CONFIG.CLKOUT2_PHASE_ERROR {105.461}] [get_bd_cells clk_wiz_0]
endgroup

# video out
set_property -dict [list CONFIG.C_HAS_ASYNC_CLK {1}] [get_bd_cells v_axi4s_vid_out_0]

# timing
set_property -dict [list CONFIG.HAS_AXI4_LITE {false} CONFIG.VIDEO_MODE {640x480p} CONFIG.GEN_F0_VSYNC_VSTART {489} CONFIG.GEN_F1_VSYNC_VSTART {489} CONFIG.GEN_HACTIVE_SIZE {640} CONFIG.GEN_HSYNC_END {752} CONFIG.GEN_HFRAME_SIZE {800} CONFIG.GEN_F0_VSYNC_HSTART {640} CONFIG.GEN_F1_VSYNC_HSTART {640} CONFIG.GEN_F0_VSYNC_HEND {640} CONFIG.GEN_F1_VSYNC_HEND {640} CONFIG.GEN_F0_VFRAME_SIZE {525} CONFIG.GEN_F1_VFRAME_SIZE {525} CONFIG.GEN_F0_VSYNC_VEND {491} CONFIG.GEN_F1_VSYNC_VEND {491} CONFIG.GEN_F0_VBLANK_HEND {640} CONFIG.GEN_F1_VBLANK_HEND {640} CONFIG.GEN_HSYNC_START {656} CONFIG.GEN_VACTIVE_SIZE {480} CONFIG.GEN_F0_VBLANK_HSTART {640} CONFIG.GEN_F1_VBLANK_HSTART {640} CONFIG.enable_detection {false}] [get_bd_cells v_tc_0]



# add interface 

# video out
startgroup
create_bd_intf_port -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_io_out
connect_bd_intf_net [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out] [get_bd_intf_ports vid_io_out]
endgroup

# video enable
startgroup
create_bd_port -dir I -type ce vid_io_out_ce
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_ports vid_io_out_ce]
endgroup
connect_bd_net [get_bd_ports vid_io_out_ce] [get_bd_pins v_tc_0/clken]

# locked
startgroup
create_bd_port -dir O locked
connect_bd_net [get_bd_pins /v_axi4s_vid_out_0/locked] [get_bd_ports locked]
endgroup


# add connectors

connect_bd_intf_net [get_bd_intf_pins mandelbrot_frame_0/video_out] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
connect_bd_intf_net [get_bd_intf_pins v_tc_0/vtiming_out] [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in]
connect_bd_net [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
connect_bd_net [get_bd_pins clk_wiz_0/clk_vid] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_ap] [get_bd_pins v_axi4s_vid_out_0/aclk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_ap] [get_bd_pins mandelbrot_frame_0/ap_clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_vid] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_vid] [get_bd_pins v_tc_0/clk]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins mandelbrot_frame_0/ap_rst_n]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins v_tc_0/resetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn]
connect_bd_net [get_bd_ports vid_io_out_ce] [get_bd_pins v_axi4s_vid_out_0/aclken]
connect_bd_net [get_bd_ports vid_io_out_ce] [get_bd_pins mandelbrot_frame_0/ap_start]

# add design
make_wrapper -files [get_files /home/trevor/mylab/experiments/20180311-tmc-mandelframe/vivado/mandelbrot_frame_1/mandelbrot_frame_1.srcs/sources_1/bd/design_1/design_1.bd] -top
add_files -norecurse /home/trevor/mylab/experiments/20180311-tmc-mandelframe/vivado/mandelbrot_frame_1/mandelbrot_frame_1.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v

# add main top
file mkdir /home/trevor/mylab/experiments/20180311-tmc-mandelframe/vivado/mandelbrot_frame_1/mandelbrot_frame_1.srcs/sources_1/new
close [ open /home/trevor/mylab/experiments/20180311-tmc-mandelframe/vivado/mandelbrot_frame_1/mandelbrot_frame_1.srcs/sources_1/new/main.v w ]
add_files /home/trevor/mylab/experiments/20180311-tmc-mandelframe/vivado/mandelbrot_frame_1/mandelbrot_frame_1.srcs/sources_1/new/main.v

