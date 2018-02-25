############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_dds_mode_fixed
set_top dds_top
add_files dds_chain.cpp
add_files -tb out_chain.gold.dat
add_files -tb dds_chain_test.cpp
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 10 -name default
config_dataflow -default_channel fifo
#source "./proj_dds_mode_fixed/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
