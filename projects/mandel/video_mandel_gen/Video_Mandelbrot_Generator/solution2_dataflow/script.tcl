############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Video_Mandelbrot_Generator
set_top video_mandelbrot_generator
add_files src/cpp/video_mandelbrot_generator.cpp
add_files -tb src/cpp/video_mandelbrot_generator_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2_dataflow"
set_part {xc7a35t-cpg236-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
source "./Video_Mandelbrot_Generator/solution2_dataflow/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port -tool xsim
export_design -rtl verilog -format ip_catalog
