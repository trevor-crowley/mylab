open_project design_1_v_tpg_0_1
set_top v_tpg
add_files -cflags " -I /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src " /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src/v_tpg_config.h
add_files -cflags " -I /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src " /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src/v_tpg.cpp
add_files -cflags " -I /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src " /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src/v_tpg.h
add_files -cflags " -I /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src " /home/trevor/mylab/experiments/20180219-tmc-test_pattern/vivado/test_pattern_3/test_pattern_3.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_1/src/v_tpg_zoneplate.h

open_solution "prj"
set_part {xc7a35tcpg236-1}
create_clock -period 5 -name ap_clk


config_rtl -form_dsp
config_schedule -verbose
config_interface -input_reg_mode both -output_reg_mode both


config_rtl -prefix design_1_v_tpg_0_1_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 7.0
exit
