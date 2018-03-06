set C_TypeInfoList {{ 
"mandelbrot_frame" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"video_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "AXI_STREAM", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<ap_axiu<24, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<24, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 24}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]},{ "id": [[], "6"]},{ "dest": [[], "6"]}],""]}], 
"4": [ "ap_uint<24>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 24}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<3>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 3}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName mandelbrot_frame
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {mandelbrot_frame}
set C_modelType { void 0 }
set C_modelArgList {
	{ video_out_V_data_V int 24 regular {axi_s 1 volatile  { video_out Data } }  }
	{ video_out_V_keep_V int 3 regular {axi_s 1 volatile  { video_out Keep } }  }
	{ video_out_V_strb_V int 3 regular {axi_s 1 volatile  { video_out Strb } }  }
	{ video_out_V_user_V int 1 regular {axi_s 1 volatile  { video_out User } }  }
	{ video_out_V_last_V int 1 regular {axi_s 1 volatile  { video_out Last } }  }
	{ video_out_V_id_V int 1 regular {axi_s 1 volatile  { video_out ID } }  }
	{ video_out_V_dest_V int 1 regular {axi_s 1 volatile  { video_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "video_out_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "video_out.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_out_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "video_out.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_out_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "video_out.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ video_out_TDATA sc_out sc_lv 24 signal 0 } 
	{ video_out_TVALID sc_out sc_logic 1 outvld 6 } 
	{ video_out_TREADY sc_in sc_logic 1 outacc 6 } 
	{ video_out_TKEEP sc_out sc_lv 3 signal 1 } 
	{ video_out_TSTRB sc_out sc_lv 3 signal 2 } 
	{ video_out_TUSER sc_out sc_lv 1 signal 3 } 
	{ video_out_TLAST sc_out sc_lv 1 signal 4 } 
	{ video_out_TID sc_out sc_lv 1 signal 5 } 
	{ video_out_TDEST sc_out sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "video_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "video_out_V_data_V", "role": "default" }} , 
 	{ "name": "video_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "video_out_V_dest_V", "role": "default" }} , 
 	{ "name": "video_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "video_out_V_dest_V", "role": "default" }} , 
 	{ "name": "video_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "video_out_V_keep_V", "role": "default" }} , 
 	{ "name": "video_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "video_out_V_strb_V", "role": "default" }} , 
 	{ "name": "video_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_out_V_user_V", "role": "default" }} , 
 	{ "name": "video_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_out_V_last_V", "role": "default" }} , 
 	{ "name": "video_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_out_V_id_V", "role": "default" }} , 
 	{ "name": "video_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "mandelbrot_frame",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "video_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "video_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "video_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "video_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "video_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "video_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "video_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "video_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	mandelbrot_frame {
		video_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		video_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		video_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		video_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		video_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		video_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		video_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "308161", "Max" : "308161"}
	, {"Name" : "Interval", "Min" : "308162", "Max" : "308162"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	video_out_V_data_V { axis {  { video_out_TDATA out_data 1 24 } } }
	video_out_V_keep_V { axis {  { video_out_TKEEP out_data 1 3 } } }
	video_out_V_strb_V { axis {  { video_out_TSTRB out_data 1 3 } } }
	video_out_V_user_V { axis {  { video_out_TUSER out_data 1 1 } } }
	video_out_V_last_V { axis {  { video_out_TLAST out_data 1 1 } } }
	video_out_V_id_V { axis {  { video_out_TID out_data 1 1 } } }
	video_out_V_dest_V { axis {  { video_out_TVALID out_vld 1 1 }  { video_out_TREADY out_acc 0 1 }  { video_out_TDEST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
