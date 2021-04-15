############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_hls_stream
set_top bytestrm_dwordproc
add_files bytestrm_dwordproc.cpp
add_files -tb bytestrm_dwordproc_test.cpp
open_solution "solution1"
set_part {xc7a35t-cpg236-1}
create_clock -period 5 -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./proj_hls_stream/solution1/directives.tcl"
csim_design -argv {-s}
csynth_design
cosim_design -tool systemc
export_design -format ip_catalog
