############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Video_Mandelbrot_Generator
set_top video_mandelbrot_generator
add_files src/cpp/video_mandelbrot_generator.cpp
add_files -tb src/cpp/video_mandelbrot_generator_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution3_pipline_mandel"
set_part {xc7z020i-clg484-1L}
create_clock -period 10 -name default
config_sdx -target none
config_export -display_name Video_Mandelbrot_Generator -format ip_catalog -rtl verilog -use_netlist none -version 1.1 -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 12.5%
source "./Video_Mandelbrot_Generator/solution3_pipline_mandel/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog -version "1.1" -display_name "Video_Mandelbrot_Generator"
