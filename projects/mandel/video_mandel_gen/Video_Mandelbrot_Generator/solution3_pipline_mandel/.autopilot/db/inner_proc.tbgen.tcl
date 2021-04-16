set moduleName inner_proc
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
set C_modelName {inner_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_0_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ img_0_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ img_0_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ im_V int 18 regular  }
	{ v_assign int 3 regular  }
	{ re_V int 18 regular  }
	{ zoom_factor_V int 18 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_0_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_0_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_0_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "im_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "v_assign", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "re_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "zoom_factor_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_0_data_stream_0_V_din sc_out sc_lv 8 signal 0 } 
	{ img_0_data_stream_0_V_full_n sc_in sc_logic 1 signal 0 } 
	{ img_0_data_stream_0_V_write sc_out sc_logic 1 signal 0 } 
	{ img_0_data_stream_1_V_din sc_out sc_lv 8 signal 1 } 
	{ img_0_data_stream_1_V_full_n sc_in sc_logic 1 signal 1 } 
	{ img_0_data_stream_1_V_write sc_out sc_logic 1 signal 1 } 
	{ img_0_data_stream_2_V_din sc_out sc_lv 8 signal 2 } 
	{ img_0_data_stream_2_V_full_n sc_in sc_logic 1 signal 2 } 
	{ img_0_data_stream_2_V_write sc_out sc_logic 1 signal 2 } 
	{ im_V sc_in sc_lv 18 signal 3 } 
	{ v_assign sc_in sc_lv 3 signal 4 } 
	{ re_V sc_in sc_lv 18 signal 5 } 
	{ zoom_factor_V sc_in sc_lv 18 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_0_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_0_V", "role": "din" }} , 
 	{ "name": "img_0_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "img_0_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_0_V", "role": "write" }} , 
 	{ "name": "img_0_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_1_V", "role": "din" }} , 
 	{ "name": "img_0_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "img_0_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_1_V", "role": "write" }} , 
 	{ "name": "img_0_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_2_V", "role": "din" }} , 
 	{ "name": "img_0_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "img_0_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_2_V", "role": "write" }} , 
 	{ "name": "im_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "im_V", "role": "default" }} , 
 	{ "name": "v_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_assign", "role": "default" }} , 
 	{ "name": "re_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "re_V", "role": "default" }} , 
 	{ "name": "zoom_factor_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "zoom_factor_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "inner_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "529",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_0_data_stream_0_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_1_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_2_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "im_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "re_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zoom_factor_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_14ns_17ns_31_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_19s_19s_38_1_1_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inner_proc {
		img_0_data_stream_0_V {Type O LastRead -1 FirstWrite 6}
		img_0_data_stream_1_V {Type O LastRead -1 FirstWrite 6}
		img_0_data_stream_2_V {Type O LastRead -1 FirstWrite 6}
		im_V {Type I LastRead 0 FirstWrite -1}
		v_assign {Type I LastRead 0 FirstWrite -1}
		re_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "529"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "529"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_0_data_stream_0_V { ap_fifo {  { img_0_data_stream_0_V_din fifo_data 1 8 }  { img_0_data_stream_0_V_full_n fifo_status 0 1 }  { img_0_data_stream_0_V_write fifo_update 1 1 } } }
	img_0_data_stream_1_V { ap_fifo {  { img_0_data_stream_1_V_din fifo_data 1 8 }  { img_0_data_stream_1_V_full_n fifo_status 0 1 }  { img_0_data_stream_1_V_write fifo_update 1 1 } } }
	img_0_data_stream_2_V { ap_fifo {  { img_0_data_stream_2_V_din fifo_data 1 8 }  { img_0_data_stream_2_V_full_n fifo_status 0 1 }  { img_0_data_stream_2_V_write fifo_update 1 1 } } }
	im_V { ap_none {  { im_V in_data 0 18 } } }
	v_assign { ap_none {  { v_assign in_data 0 3 } } }
	re_V { ap_none {  { re_V in_data 0 18 } } }
	zoom_factor_V { ap_none {  { zoom_factor_V in_data 0 18 } } }
}
