############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axi_master
set_top main
add_files axi_master/.settings/axi_main_counter
open_solution "solution1"
set_part {xc7a200tfbg676-2} -tool vivado
create_clock -period 10 -name default
#source "./axi_master/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
