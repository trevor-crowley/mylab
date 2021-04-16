set moduleName video_pattern_generator
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {video_pattern_generator}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_video_V_data_V int 24 regular {fifo 1 volatile }  }
	{ m_axis_video_V_keep_V int 3 regular {fifo 1 volatile }  }
	{ m_axis_video_V_strb_V int 3 regular {fifo 1 volatile }  }
	{ m_axis_video_V_user_V int 1 regular {fifo 1 volatile }  }
	{ m_axis_video_V_last_V int 1 regular {fifo 1 volatile }  }
	{ m_axis_video_V_id_V int 1 regular {fifo 1 volatile }  }
	{ m_axis_video_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_video_V_data_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "m_axis_video.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "m_axis_video.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "m_axis_video.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axis_video_V_data_V_din sc_out sc_lv 24 signal 0 } 
	{ m_axis_video_V_data_V_full_n sc_in sc_logic 1 signal 0 } 
	{ m_axis_video_V_data_V_write sc_out sc_logic 1 signal 0 } 
	{ m_axis_video_V_keep_V_din sc_out sc_lv 3 signal 1 } 
	{ m_axis_video_V_keep_V_full_n sc_in sc_logic 1 signal 1 } 
	{ m_axis_video_V_keep_V_write sc_out sc_logic 1 signal 1 } 
	{ m_axis_video_V_strb_V_din sc_out sc_lv 3 signal 2 } 
	{ m_axis_video_V_strb_V_full_n sc_in sc_logic 1 signal 2 } 
	{ m_axis_video_V_strb_V_write sc_out sc_logic 1 signal 2 } 
	{ m_axis_video_V_user_V_din sc_out sc_lv 1 signal 3 } 
	{ m_axis_video_V_user_V_full_n sc_in sc_logic 1 signal 3 } 
	{ m_axis_video_V_user_V_write sc_out sc_logic 1 signal 3 } 
	{ m_axis_video_V_last_V_din sc_out sc_lv 1 signal 4 } 
	{ m_axis_video_V_last_V_full_n sc_in sc_logic 1 signal 4 } 
	{ m_axis_video_V_last_V_write sc_out sc_logic 1 signal 4 } 
	{ m_axis_video_V_id_V_din sc_out sc_lv 1 signal 5 } 
	{ m_axis_video_V_id_V_full_n sc_in sc_logic 1 signal 5 } 
	{ m_axis_video_V_id_V_write sc_out sc_logic 1 signal 5 } 
	{ m_axis_video_V_dest_V_din sc_out sc_lv 1 signal 6 } 
	{ m_axis_video_V_dest_V_full_n sc_in sc_logic 1 signal 6 } 
	{ m_axis_video_V_dest_V_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axis_video_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "write" }} , 
 	{ "name": "m_axis_video_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "write" }} , 
 	{ "name": "m_axis_video_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "write" }} , 
 	{ "name": "m_axis_video_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "write" }} , 
 	{ "name": "m_axis_video_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "write" }} , 
 	{ "name": "m_axis_video_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "write" }} , 
 	{ "name": "m_axis_video_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "din" }} , 
 	{ "name": "m_axis_video_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "full_n" }} , 
 	{ "name": "m_axis_video_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "video_pattern_generator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "481201", "EstimateLatencyMax" : "481201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_axis_video_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_V_dest_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	video_pattern_generator {
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "481201", "Max" : "481201"}
	, {"Name" : "Interval", "Min" : "481202", "Max" : "481202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_video_V_data_V { ap_fifo {  { m_axis_video_V_data_V_din fifo_data 1 24 }  { m_axis_video_V_data_V_full_n fifo_status 0 1 }  { m_axis_video_V_data_V_write fifo_update 1 1 } } }
	m_axis_video_V_keep_V { ap_fifo {  { m_axis_video_V_keep_V_din fifo_data 1 3 }  { m_axis_video_V_keep_V_full_n fifo_status 0 1 }  { m_axis_video_V_keep_V_write fifo_update 1 1 } } }
	m_axis_video_V_strb_V { ap_fifo {  { m_axis_video_V_strb_V_din fifo_data 1 3 }  { m_axis_video_V_strb_V_full_n fifo_status 0 1 }  { m_axis_video_V_strb_V_write fifo_update 1 1 } } }
	m_axis_video_V_user_V { ap_fifo {  { m_axis_video_V_user_V_din fifo_data 1 1 }  { m_axis_video_V_user_V_full_n fifo_status 0 1 }  { m_axis_video_V_user_V_write fifo_update 1 1 } } }
	m_axis_video_V_last_V { ap_fifo {  { m_axis_video_V_last_V_din fifo_data 1 1 }  { m_axis_video_V_last_V_full_n fifo_status 0 1 }  { m_axis_video_V_last_V_write fifo_update 1 1 } } }
	m_axis_video_V_id_V { ap_fifo {  { m_axis_video_V_id_V_din fifo_data 1 1 }  { m_axis_video_V_id_V_full_n fifo_status 0 1 }  { m_axis_video_V_id_V_write fifo_update 1 1 } } }
	m_axis_video_V_dest_V { ap_fifo {  { m_axis_video_V_dest_V_din fifo_data 1 1 }  { m_axis_video_V_dest_V_full_n fifo_status 0 1 }  { m_axis_video_V_dest_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	m_axis_video_V_data_V { fifo_write 800 no_conditional }
	m_axis_video_V_keep_V { fifo_write 800 no_conditional }
	m_axis_video_V_strb_V { fifo_write 800 no_conditional }
	m_axis_video_V_user_V { fifo_write 800 no_conditional }
	m_axis_video_V_last_V { fifo_write 800 no_conditional }
	m_axis_video_V_id_V { fifo_write 800 no_conditional }
	m_axis_video_V_dest_V { fifo_write 800 no_conditional }
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
