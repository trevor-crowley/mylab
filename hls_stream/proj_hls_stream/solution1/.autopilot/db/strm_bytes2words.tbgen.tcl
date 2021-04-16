set moduleName strm_bytes2words
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
set C_modelName {strm_bytes2words}
set C_modelType { void 0 }
set C_modelArgList {
	{ words_out_V int 32 regular {fifo 1 volatile }  }
	{ bytes_in_V int 8 regular {axi_s 0 volatile  { bytes_in_V Data } }  }
	{ bytestrm_len int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "words_out_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bytes_in_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bytestrm_len", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ words_out_V_din sc_out sc_lv 32 signal 0 } 
	{ words_out_V_full_n sc_in sc_logic 1 signal 0 } 
	{ words_out_V_write sc_out sc_logic 1 signal 0 } 
	{ bytes_in_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ bytes_in_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ bytes_in_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ bytestrm_len_dout sc_in sc_lv 16 signal 2 } 
	{ bytestrm_len_empty_n sc_in sc_logic 1 signal 2 } 
	{ bytestrm_len_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "words_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "words_out_V", "role": "din" }} , 
 	{ "name": "words_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "words_out_V", "role": "full_n" }} , 
 	{ "name": "words_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "words_out_V", "role": "write" }} , 
 	{ "name": "bytes_in_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bytes_in_V", "role": "TDATA" }} , 
 	{ "name": "bytes_in_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "bytes_in_V", "role": "TVALID" }} , 
 	{ "name": "bytes_in_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "bytes_in_V", "role": "TREADY" }} , 
 	{ "name": "bytestrm_len_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bytestrm_len", "role": "dout" }} , 
 	{ "name": "bytestrm_len_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytestrm_len", "role": "empty_n" }} , 
 	{ "name": "bytestrm_len_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytestrm_len", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "strm_bytes2words",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "words_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "words_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytes_in_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytes_in_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytestrm_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bytestrm_len_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_bytes_in_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	strm_bytes2words {
		words_out_V {Type O LastRead -1 FirstWrite 1}
		bytes_in_V {Type I LastRead 1 FirstWrite -1}
		bytestrm_len {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1489"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1489"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	words_out_V { ap_fifo {  { words_out_V_din fifo_data 1 32 }  { words_out_V_full_n fifo_status 0 1 }  { words_out_V_write fifo_update 1 1 } } }
	bytes_in_V { axis {  { bytes_in_V_TDATA in_data 0 8 }  { bytes_in_V_TVALID in_vld 0 1 }  { bytes_in_V_TREADY in_acc 1 1 } } }
	bytestrm_len { ap_fifo {  { bytestrm_len_dout fifo_data 0 16 }  { bytestrm_len_empty_n fifo_status 0 1 }  { bytestrm_len_read fifo_update 1 1 } } }
}
