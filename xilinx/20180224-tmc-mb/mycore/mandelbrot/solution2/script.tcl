############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mandelbrot
set_top mandelbrot
add_files mandelbrot/C/mandelbrot.cpp
add_files -tb mandelbrot/C/mandelbrot_tb.cpp
open_solution "solution2"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
source "./mandelbrot/solution2/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc
export_design -format ip_catalog
