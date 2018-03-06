############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_vadd
set_top vadd
add_files vadd.cl
add_files -tb vadd_test.c
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
#source "./proj_vadd/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
