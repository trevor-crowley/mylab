set moduleName strm_words2bytes
set isTopModule 0
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
set C_modelName {strm_words2bytes}
set C_modelType { void 0 }
set C_modelArgList {
	{ bytes_out_V int 8 regular {axi_s 1 volatile  { bytes_out_V Data } }  }
	{ words_in_V int 32 regular {fifo 0 volatile }  }
	{ bytes_out_len_loc int 14 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bytes_out_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "words_in_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bytes_out_len_loc", "interface" : "fifo", "bitwidth" : 14, "direction" : "READONLY"} ]}
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
	{ bytes_out_V_TDATA sc_out sc_lv 8 signal 0 } 
	{ bytes_out_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ bytes_out_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ words_in_V_dout sc_in sc_lv 32 signal 1 } 
	{ words_in_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ words_in_V_read sc_out sc_logic 1 signal 1 } 
	{ bytes_out_len_loc_dout sc_in sc_lv 14 signal 2 } 
	{ bytes_out_len_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ bytes_out_len_loc_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bytes_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_out_V", "role": "TDATA" }} , 
 	{ "name": "bytes_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bytes_out_V", "role": "TVALID" }} , 
 	{ "name": "bytes_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "bytes_out_V", "role": "TREADY" }} , 
 	{ "name": "words_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "words_in_V", "role": "dout" }} , 
 	{ "name": "words_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "words_in_V", "role": "empty_n" }} , 
 	{ "name": "words_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "words_in_V", "role": "read" }} , 
 	{ "name": "bytes_out_len_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bytes_out_len_loc", "role": "dout" }} , 
 	{ "name": "bytes_out_len_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytes_out_len_loc", "role": "empty_n" }} , 
 	{ "name": "bytes_out_len_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytes_out_len_loc", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "strm_words2bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "745",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bytes_out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytes_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "words_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "words_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytes_out_len_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bytes_out_len_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_bytes_out_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	strm_words2bytes {
		bytes_out_V {Type O LastRead -1 FirstWrite 1}
		words_in_V {Type I LastRead 1 FirstWrite -1}
		bytes_out_len_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "745"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "745"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bytes_out_V { axis {  { bytes_out_V_TDATA out_data 1 8 }  { bytes_out_V_TVALID out_vld 1 1 }  { bytes_out_V_TREADY out_acc 0 1 } } }
	words_in_V { ap_fifo {  { words_in_V_dout fifo_data 0 32 }  { words_in_V_empty_n fifo_status 0 1 }  { words_in_V_read fifo_update 1 1 } } }
	bytes_out_len_loc { ap_fifo {  { bytes_out_len_loc_dout fifo_data 0 14 }  { bytes_out_len_loc_empty_n fifo_status 0 1 }  { bytes_out_len_loc_read fifo_update 1 1 } } }
}
