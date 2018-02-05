set moduleName p_fir_config_cpp_lin
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {__fir_config.cpp_lin}
set C_modelType { void 0 }
set C_modelArgList {
	{ fir_in int 16 regular {fifo 0 volatile }  }
	{ fir_out int 24 regular {fifo 1 volatile }  }
	{ fir_config_V int 8 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fir_in", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fir_out", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fir_config_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fir_in_dout sc_in sc_lv 16 signal 0 } 
	{ fir_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ fir_in_read sc_out sc_logic 1 signal 0 } 
	{ fir_out_din sc_out sc_lv 24 signal 1 } 
	{ fir_out_full_n sc_in sc_logic 1 signal 1 } 
	{ fir_out_write sc_out sc_logic 1 signal 1 } 
	{ fir_config_V_dout sc_in sc_lv 8 signal 2 } 
	{ fir_config_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ fir_config_V_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fir_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fir_in", "role": "dout" }} , 
 	{ "name": "fir_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_in", "role": "empty_n" }} , 
 	{ "name": "fir_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_in", "role": "read" }} , 
 	{ "name": "fir_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "fir_out", "role": "din" }} , 
 	{ "name": "fir_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_out", "role": "full_n" }} , 
 	{ "name": "fir_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_out", "role": "write" }} , 
 	{ "name": "fir_config_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fir_config_V", "role": "dout" }} , 
 	{ "name": "fir_config_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_config_V", "role": "empty_n" }} , 
 	{ "name": "fir_config_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fir_config_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "p_fir_config_cpp_lin",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_run_fu_54"}],
		"Port" : [
			{"Name" : "fir_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_run_fu_54", "Port" : "in_V"}]},
			{"Name" : "fir_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_run_fu_54", "Port" : "out_V"}]},
			{"Name" : "fir_config_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_run_fu_54", "Port" : "config_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_fu_54", "Parent" : "0",
		"CDFG" : "run",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_V", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "config_V", "Type" : "Fifo", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_fir_config_cpp_lin {
		fir_in {Type I LastRead -1 FirstWrite -1}
		fir_out {Type O LastRead -1 FirstWrite -1}
		fir_config_V {Type I LastRead -1 FirstWrite -1}}
	run {
		in_V {Type I LastRead -1 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite -1}
		config_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "29", "Max" : "29"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fir_in { ap_fifo {  { fir_in_dout fifo_data 0 16 }  { fir_in_empty_n fifo_status 0 1 }  { fir_in_read fifo_update 1 1 } } }
	fir_out { ap_fifo {  { fir_out_din fifo_data 1 24 }  { fir_out_full_n fifo_status 0 1 }  { fir_out_write fifo_update 1 1 } } }
	fir_config_V { ap_fifo {  { fir_config_V_dout fifo_data 0 8 }  { fir_config_V_empty_n fifo_status 0 1 }  { fir_config_V_read fifo_update 1 1 } } }
}
