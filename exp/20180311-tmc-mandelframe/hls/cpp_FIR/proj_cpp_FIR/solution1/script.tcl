############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_cpp_FIR
set_top cpp_FIR
add_files cpp_FIR.cpp
add_files -tb result.golden.dat
add_files -tb cpp_FIR.inc
add_files -tb cpp_FIR_test.cpp
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
#source "./proj_cpp_FIR/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
