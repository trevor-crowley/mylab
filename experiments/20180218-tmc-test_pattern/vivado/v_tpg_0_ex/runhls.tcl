open_project ex_sim_v_tpg_0_0
set_top v_tpg
add_files -cflags " -I /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src " /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src/v_tpg_config.h
add_files -cflags " -I /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src " /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src/v_tpg.cpp
add_files -cflags " -I /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src " /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src/v_tpg.h
add_files -cflags " -I /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src " /home/trevor/mylab/experiments/20180218-tmc-test_pattern/vivado/v_tpg_0_ex/v_tpg_0_ex.srcs/sources_1/bd/ex_sim/ip/ex_sim_v_tpg_0_0/src/v_tpg_zoneplate.h

open_solution "prj"
set_part {xc7a35tcpg236-1}
create_clock -period 3.333 -name ap_clk


config_rtl -form_dsp
config_schedule -verbose
config_interface -input_reg_mode both -output_reg_mode both


config_rtl -prefix ex_sim_v_tpg_0_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 7.0
exit
