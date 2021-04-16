
# remove imported IP
remove_files [get_files v_tpg_0.xci]
#file delete -force [get_property directory [current_project]]/v_tpg_0_example.srcs/sources_1/ip/v_tpg_0

# set USED_IN property for synthesis
set_property used_in_simulation false [get_files ex_synth.bd]

# set USED_IN property for simulation
set_property used_in_implementation false [get_files ex_sim.bd]
set_property used_in_synthesis false [get_files ex_sim.bd]

# move simulation bd to simulation fileset
move_files -fileset sim_1 [get_files ex_sim.bd]

