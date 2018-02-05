set moduleName run
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {run}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V int 16 regular {fifo 0 volatile }  }
	{ out_V int 24 regular {fifo 1 volatile }  }
	{ config_V int 8 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_V", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "config_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_V_dout sc_in sc_lv 16 signal 0 } 
	{ in_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_din sc_out sc_lv 24 signal 1 } 
	{ out_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_V_write sc_out sc_logic 1 signal 1 } 
	{ config_V_dout sc_in sc_lv 8 signal 2 } 
	{ config_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ config_V_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_V", "role": "dout" }} , 
 	{ "name": "in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "empty_n" }} , 
 	{ "name": "in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "read" }} , 
 	{ "name": "out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_V", "role": "din" }} , 
 	{ "name": "out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "full_n" }} , 
 	{ "name": "out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "write" }} , 
 	{ "name": "config_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "config_V", "role": "dout" }} , 
 	{ "name": "config_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_V", "role": "empty_n" }} , 
 	{ "name": "config_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	run {
		in_V {Type I LastRead -1 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite -1}
		config_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V { ap_fifo {  { in_V_dout fifo_data 0 16 }  { in_V_empty_n fifo_status 0 1 }  { in_V_read fifo_update 1 1 } } }
	out_V { ap_fifo {  { out_V_din fifo_data 1 24 }  { out_V_full_n fifo_status 0 1 }  { out_V_write fifo_update 1 1 } } }
	config_V { ap_fifo {  { config_V_dout fifo_data 0 8 }  { config_V_empty_n fifo_status 0 1 }  { config_V_read fifo_update 1 1 } } }
}
