############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top fir_top
add_files fir_config.cpp
add_files -tb fir_config_tb.cpp
open_solution "solution1"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
config_dataflow -default_channel fifo -fifo_depth 1
#source "./proj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -compiler gcc
export_design -format ip_catalog
