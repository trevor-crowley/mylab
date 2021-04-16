set moduleName Loop_out_proc28
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
set C_modelName {Loop_out_proc28}
set C_modelType { void 0 }
set C_modelArgList {
	{ im_V int 18 regular {fifo 0}  }
	{ re_V int 18 regular {fifo 0}  }
	{ zoom_factor_V int 18 regular {fifo 0}  }
	{ img_0_data_stream_V_s int 8 regular {fifo 1 volatile } {global 1}  }
	{ img_0_data_stream_V_1 int 8 regular {fifo 1 volatile } {global 1}  }
	{ img_0_data_stream_V_2 int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "im_V", "interface" : "fifo", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "re_V", "interface" : "fifo", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "zoom_factor_V", "interface" : "fifo", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "img_0_data_stream_V_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "img_0_data_stream_V_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "img_0_data_stream_V_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
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
	{ im_V_dout sc_in sc_lv 18 signal 0 } 
	{ im_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ im_V_read sc_out sc_logic 1 signal 0 } 
	{ re_V_dout sc_in sc_lv 18 signal 1 } 
	{ re_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ re_V_read sc_out sc_logic 1 signal 1 } 
	{ zoom_factor_V_dout sc_in sc_lv 18 signal 2 } 
	{ zoom_factor_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ zoom_factor_V_read sc_out sc_logic 1 signal 2 } 
	{ img_0_data_stream_V_s_din sc_out sc_lv 8 signal 3 } 
	{ img_0_data_stream_V_s_full_n sc_in sc_logic 1 signal 3 } 
	{ img_0_data_stream_V_s_write sc_out sc_logic 1 signal 3 } 
	{ img_0_data_stream_V_1_din sc_out sc_lv 8 signal 4 } 
	{ img_0_data_stream_V_1_full_n sc_in sc_logic 1 signal 4 } 
	{ img_0_data_stream_V_1_write sc_out sc_logic 1 signal 4 } 
	{ img_0_data_stream_V_2_din sc_out sc_lv 8 signal 5 } 
	{ img_0_data_stream_V_2_full_n sc_in sc_logic 1 signal 5 } 
	{ img_0_data_stream_V_2_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "im_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "im_V", "role": "dout" }} , 
 	{ "name": "im_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "im_V", "role": "empty_n" }} , 
 	{ "name": "im_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "im_V", "role": "read" }} , 
 	{ "name": "re_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "re_V", "role": "dout" }} , 
 	{ "name": "re_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "re_V", "role": "empty_n" }} , 
 	{ "name": "re_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "re_V", "role": "read" }} , 
 	{ "name": "zoom_factor_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "zoom_factor_V", "role": "dout" }} , 
 	{ "name": "zoom_factor_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zoom_factor_V", "role": "empty_n" }} , 
 	{ "name": "zoom_factor_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zoom_factor_V", "role": "read" }} , 
 	{ "name": "img_0_data_stream_V_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_V_s", "role": "din" }} , 
 	{ "name": "img_0_data_stream_V_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_s", "role": "full_n" }} , 
 	{ "name": "img_0_data_stream_V_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_s", "role": "write" }} , 
 	{ "name": "img_0_data_stream_V_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_V_1", "role": "din" }} , 
 	{ "name": "img_0_data_stream_V_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_1", "role": "full_n" }} , 
 	{ "name": "img_0_data_stream_V_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_1", "role": "write" }} , 
 	{ "name": "img_0_data_stream_V_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_V_2", "role": "din" }} , 
 	{ "name": "img_0_data_stream_V_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_2", "role": "full_n" }} , 
 	{ "name": "img_0_data_stream_V_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "Loop_out_proc28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6240001", "EstimateLatencyMax" : "615840001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "im_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "im_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "re_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "re_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zoom_factor_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "zoom_factor_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_17ns_7ns_24_1_1_U7", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U8", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U9", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U10", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U11", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_mul_mul_19s_19s_38_1_1_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_out_proc28 {
		im_V {Type I LastRead 0 FirstWrite -1}
		re_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}
		img_0_data_stream_V_s {Type O LastRead -1 FirstWrite 8}
		img_0_data_stream_V_1 {Type O LastRead -1 FirstWrite 8}
		img_0_data_stream_V_2 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6240001", "Max" : "615840001"}
	, {"Name" : "Interval", "Min" : "6240001", "Max" : "615840001"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	im_V { ap_fifo {  { im_V_dout fifo_data 0 18 }  { im_V_empty_n fifo_status 0 1 }  { im_V_read fifo_update 1 1 } } }
	re_V { ap_fifo {  { re_V_dout fifo_data 0 18 }  { re_V_empty_n fifo_status 0 1 }  { re_V_read fifo_update 1 1 } } }
	zoom_factor_V { ap_fifo {  { zoom_factor_V_dout fifo_data 0 18 }  { zoom_factor_V_empty_n fifo_status 0 1 }  { zoom_factor_V_read fifo_update 1 1 } } }
	img_0_data_stream_V_s { ap_fifo {  { img_0_data_stream_V_s_din fifo_data 1 8 }  { img_0_data_stream_V_s_full_n fifo_status 0 1 }  { img_0_data_stream_V_s_write fifo_update 1 1 } } }
	img_0_data_stream_V_1 { ap_fifo {  { img_0_data_stream_V_1_din fifo_data 1 8 }  { img_0_data_stream_V_1_full_n fifo_status 0 1 }  { img_0_data_stream_V_1_write fifo_update 1 1 } } }
	img_0_data_stream_V_2 { ap_fifo {  { img_0_data_stream_V_2_din fifo_data 1 8 }  { img_0_data_stream_V_2_full_n fifo_status 0 1 }  { img_0_data_stream_V_2_write fifo_update 1 1 } } }
}
