############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mandelbrot_frame
set_top mandelbrot_frame
add_files mandelbrot_frame/src/mandelbrot_frame.cpp
add_files mandelbrot_frame/src/palette.h
add_files -tb mandelbrot_frame/src/mandelbrot_frame_tb.cpp
open_solution "solution1"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
#source "./mandelbrot_frame/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc
export_design -rtl verilog -format ip_catalog -description "mandelbrot video frame" -vendor "tmc" -library "user.org" -version "0.3"
