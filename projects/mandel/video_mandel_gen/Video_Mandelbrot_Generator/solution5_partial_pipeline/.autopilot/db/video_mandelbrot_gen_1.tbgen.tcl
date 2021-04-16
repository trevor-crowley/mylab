set moduleName video_mandelbrot_gen_1
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {video_mandelbrot_gen.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ re_V int 18 regular  }
	{ im_V int 18 regular  }
	{ zoom_factor_V int 18 regular  }
	{ re_V_out int 18 regular {fifo 1}  }
	{ im_V_out int 18 regular {fifo 1}  }
	{ zoom_factor_V_out int 18 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "re_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "im_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "zoom_factor_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "re_V_out", "interface" : "fifo", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "im_V_out", "interface" : "fifo", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zoom_factor_V_out", "interface" : "fifo", "bitwidth" : 18, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ re_V sc_in sc_lv 18 signal 0 } 
	{ im_V sc_in sc_lv 18 signal 1 } 
	{ zoom_factor_V sc_in sc_lv 18 signal 2 } 
	{ re_V_out_din sc_out sc_lv 18 signal 3 } 
	{ re_V_out_full_n sc_in sc_logic 1 signal 3 } 
	{ re_V_out_write sc_out sc_logic 1 signal 3 } 
	{ im_V_out_din sc_out sc_lv 18 signal 4 } 
	{ im_V_out_full_n sc_in sc_logic 1 signal 4 } 
	{ im_V_out_write sc_out sc_logic 1 signal 4 } 
	{ zoom_factor_V_out_din sc_out sc_lv 18 signal 5 } 
	{ zoom_factor_V_out_full_n sc_in sc_logic 1 signal 5 } 
	{ zoom_factor_V_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "re_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "re_V", "role": "default" }} , 
 	{ "name": "im_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "im_V", "role": "default" }} , 
 	{ "name": "zoom_factor_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "zoom_factor_V", "role": "default" }} , 
 	{ "name": "re_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "re_V_out", "role": "din" }} , 
 	{ "name": "re_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "re_V_out", "role": "full_n" }} , 
 	{ "name": "re_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "re_V_out", "role": "write" }} , 
 	{ "name": "im_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "im_V_out", "role": "din" }} , 
 	{ "name": "im_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "im_V_out", "role": "full_n" }} , 
 	{ "name": "im_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "im_V_out", "role": "write" }} , 
 	{ "name": "zoom_factor_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "zoom_factor_V_out", "role": "din" }} , 
 	{ "name": "zoom_factor_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zoom_factor_V_out", "role": "full_n" }} , 
 	{ "name": "zoom_factor_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zoom_factor_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "video_mandelbrot_gen_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "re_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "im_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zoom_factor_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "re_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "re_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "im_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "im_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zoom_factor_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "zoom_factor_V_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	video_mandelbrot_gen_1 {
		re_V {Type I LastRead 0 FirstWrite -1}
		im_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}
		re_V_out {Type O LastRead -1 FirstWrite 0}
		im_V_out {Type O LastRead -1 FirstWrite 0}
		zoom_factor_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	re_V { ap_none {  { re_V in_data 0 18 } } }
	im_V { ap_none {  { im_V in_data 0 18 } } }
	zoom_factor_V { ap_none {  { zoom_factor_V in_data 0 18 } } }
	re_V_out { ap_fifo {  { re_V_out_din fifo_data 1 18 }  { re_V_out_full_n fifo_status 0 1 }  { re_V_out_write fifo_update 1 1 } } }
	im_V_out { ap_fifo {  { im_V_out_din fifo_data 1 18 }  { im_V_out_full_n fifo_status 0 1 }  { im_V_out_write fifo_update 1 1 } } }
	zoom_factor_V_out { ap_fifo {  { zoom_factor_V_out_din fifo_data 1 18 }  { zoom_factor_V_out_full_n fifo_status 0 1 }  { zoom_factor_V_out_write fifo_update 1 1 } } }
}
