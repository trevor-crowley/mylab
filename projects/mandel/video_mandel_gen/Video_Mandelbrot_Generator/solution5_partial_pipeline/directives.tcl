############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode s_axilite "video_mandelbrot_generator"
set_directive_dataflow "video_mandelbrot_generator/outer"
set_directive_dataflow "video_mandelbrot_generator"
set_directive_pipeline "video_mandelbrot_generator/mandel_calc"
set_directive_resource -core RAM_1P_BRAM "video_mandelbrot_generator" img_0
