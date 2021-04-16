############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Video_Pattern_Generator
set_top video_pattern_generator
add_files src/cpp/video_pattern_generator.cpp
add_files -tb src/cpp/video_pattern_generator_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./Video_Pattern_Generator/solution1/directives.tcl"
csim_design -argv {-shared}
csynth_design
cosim_design -trace_level port -tool xsim
export_design -format ip_catalog
