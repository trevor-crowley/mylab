############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mandelbrot_pixel
set_top mandel_calc
add_files mandelbrot_pixel/C/mandel_calc.cpp
add_files -tb mandelbrot_pixel/C/mandel_calc_tb.cpp
open_solution "solution4"
set_part {xc7a35tcpg236-1}
create_clock -period 10 -name default
source "./mandelbrot_pixel/solution4/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
