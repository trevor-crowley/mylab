############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top fir_top
add_files fir_2ch_int.cpp
add_files -tb fir_2ch_int_din_i.txt
add_files -tb fir_2ch_int_din_q.txt
add_files -tb fir_2ch_int_dout_i_cmodel.txt
add_files -tb fir_2ch_int_dout_q_cmodel.txt
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
config_dataflow -default_channel fifo -fifo_depth 1
source "./proj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
