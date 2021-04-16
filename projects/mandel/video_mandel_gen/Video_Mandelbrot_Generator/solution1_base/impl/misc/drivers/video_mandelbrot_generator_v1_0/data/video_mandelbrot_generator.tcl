# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XVideo_mandelbrot_generator" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CMD_BASEADDR" \
        "C_S_AXI_CMD_HIGHADDR"

    xdefine_config_file $drv_handle "xvideo_mandelbrot_generator_g.c" "XVideo_mandelbrot_generator" \
        "DEVICE_ID" \
        "C_S_AXI_CMD_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XVideo_mandelbrot_generator" \
        "DEVICE_ID" \
        "C_S_AXI_CMD_BASEADDR" \
        "C_S_AXI_CMD_HIGHADDR"
}

