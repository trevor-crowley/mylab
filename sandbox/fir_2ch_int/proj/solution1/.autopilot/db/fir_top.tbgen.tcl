set moduleName fir_top
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fir_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ din_i_V int 16 regular {fifo 0 volatile }  }
	{ din_q_V int 16 regular {fifo 0 volatile }  }
	{ dout_i_V int 40 regular {fifo 1 volatile }  }
	{ dout_q_V int 40 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din_i_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "din_i.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} , 
 	{ "Name" : "din_q_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "din_q.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_i_V", "interface" : "fifo", "bitwidth" : 40, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "dout_i.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_q_V", "interface" : "fifo", "bitwidth" : 40, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "dout_q.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ din_i_V_dout sc_in sc_lv 16 signal 0 } 
	{ din_i_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ din_i_V_read sc_out sc_logic 1 signal 0 } 
	{ din_q_V_dout sc_in sc_lv 16 signal 1 } 
	{ din_q_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ din_q_V_read sc_out sc_logic 1 signal 1 } 
	{ dout_i_V_din sc_out sc_lv 40 signal 2 } 
	{ dout_i_V_full_n sc_in sc_logic 1 signal 2 } 
	{ dout_i_V_write sc_out sc_logic 1 signal 2 } 
	{ dout_q_V_din sc_out sc_lv 40 signal 3 } 
	{ dout_q_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dout_q_V_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "din_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_i_V", "role": "dout" }} , 
 	{ "name": "din_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_i_V", "role": "empty_n" }} , 
 	{ "name": "din_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_i_V", "role": "read" }} , 
 	{ "name": "din_q_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "din_q_V", "role": "dout" }} , 
 	{ "name": "din_q_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_q_V", "role": "empty_n" }} , 
 	{ "name": "din_q_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_q_V", "role": "read" }} , 
 	{ "name": "dout_i_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "dout_i_V", "role": "din" }} , 
 	{ "name": "dout_i_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_i_V", "role": "full_n" }} , 
 	{ "name": "dout_i_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_i_V", "role": "write" }} , 
 	{ "name": "dout_q_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "dout_q_V", "role": "din" }} , 
 	{ "name": "dout_q_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_q_V", "role": "full_n" }} , 
 	{ "name": "dout_q_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_q_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "fir_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5001", "EstimateLatencyMax" : "5001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dummy_fe_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "dummy_be_U0"}],
		"Port" : [
			{"Name" : "din_i_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dummy_fe_U0", "Port" : "din_i_V"}]},
			{"Name" : "din_q_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dummy_fe_U0", "Port" : "din_q_V"}]},
			{"Name" : "dout_i_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dummy_be_U0", "Port" : "dout_i_V"}]},
			{"Name" : "dout_q_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dummy_be_U0", "Port" : "dout_q_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummy_fe_U0", "Parent" : "0",
		"CDFG" : "dummy_fe",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5001", "EstimateLatencyMax" : "5001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "din_i_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_q_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_q_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "out_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.run_U0", "Parent" : "0",
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_run_U0_U",
		"Port" : [
			{"Name" : "in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4"},
			{"Name" : "out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "5"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummy_be_U0", "Parent" : "0",
		"CDFG" : "dummy_be",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5001", "EstimateLatencyMax" : "5001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_dummy_bbkb_U",
		"Port" : [
			{"Name" : "in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_i_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_q_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_q_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_in_channel_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_out_channel_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_run_U0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dummy_bbkb_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_top {
		din_i_V {Type I LastRead 1 FirstWrite -1}
		din_q_V {Type I LastRead 1 FirstWrite -1}
		dout_i_V {Type O LastRead -1 FirstWrite 2}
		dout_q_V {Type O LastRead -1 FirstWrite 2}}
	dummy_fe {
		din_i_V {Type I LastRead 1 FirstWrite -1}
		din_q_V {Type I LastRead 1 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite 1}}
	run {
		in_V {Type I LastRead -1 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite -1}}
	dummy_be {
		in_V {Type I LastRead 2 FirstWrite -1}
		dout_i_V {Type O LastRead -1 FirstWrite 2}
		dout_q_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5001", "Max" : "5001"}
	, {"Name" : "Interval", "Min" : "5002", "Max" : "5002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	din_i_V { ap_fifo {  { din_i_V_dout fifo_data 0 16 }  { din_i_V_empty_n fifo_status 0 1 }  { din_i_V_read fifo_update 1 1 } } }
	din_q_V { ap_fifo {  { din_q_V_dout fifo_data 0 16 }  { din_q_V_empty_n fifo_status 0 1 }  { din_q_V_read fifo_update 1 1 } } }
	dout_i_V { ap_fifo {  { dout_i_V_din fifo_data 1 40 }  { dout_i_V_full_n fifo_status 0 1 }  { dout_i_V_write fifo_update 1 1 } } }
	dout_q_V { ap_fifo {  { dout_q_V_din fifo_data 1 40 }  { dout_q_V_full_n fifo_status 0 1 }  { dout_q_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	din_i_V { fifo_read 1 no_conditional }
	din_q_V { fifo_read 1 no_conditional }
	dout_i_V { fifo_write 1 no_conditional }
	dout_q_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
