############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_2D_convolution_with_linebuffer
set_top filter11x11_strm
add_files convolution.cpp
add_files -tb convolution_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 6.66 -name default
#source "./proj_2D_convolution_with_linebuffer/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
