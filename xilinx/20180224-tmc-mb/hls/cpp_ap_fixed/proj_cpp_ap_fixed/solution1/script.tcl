############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_cpp_ap_fixed
set_top cpp_ap_fixed
add_files cpp_ap_fixed.cpp
add_files -tb result.golden.dat
add_files -tb cpp_ap_fixed_test.cpp
open_solution "solution1"
set_part {xc7a200tfbg676-2}
create_clock -period 4 -name default
#source "./proj_cpp_ap_fixed/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -compiler gcc
export_design -rtl verilog -format ip_catalog
