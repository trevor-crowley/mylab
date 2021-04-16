############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pipeline
set_top myloop
add_files top.cpp
add_files -tb top_tb.cpp
open_solution "solution1"
set_part {xc7a200tfbg676-2} -tool vivado
create_clock -period 10 -name default
#source "./pipeline/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
