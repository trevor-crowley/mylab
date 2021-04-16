set moduleName video_mandelbrot_generator
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
set C_modelName {video_mandelbrot_generator}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axis_video_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ re_V int 18 regular {axi_slave 0}  }
	{ im_V int 18 regular {axi_slave 0}  }
	{ zoom_factor_V int 18 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "m_axis_video.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "m_axis_video.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "m_axis_video.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "re_V", "interface" : "axi_slave", "bundle":"cmd","type":"ap_none","bitwidth" : 18, "direction" : "READONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "re.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "im_V", "interface" : "axi_slave", "bundle":"cmd","type":"ap_none","bitwidth" : 18, "direction" : "READONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "im.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "zoom_factor_V", "interface" : "axi_slave", "bundle":"cmd","type":"ap_none","bitwidth" : 18, "direction" : "READONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "zoom_factor.V","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ s_axi_cmd_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_cmd_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_cmd_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_cmd_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_cmd_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_cmd_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_cmd_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 0 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 1 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 2 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 3 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 4 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 5 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 6 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 6 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 6 } 
}
set NewPortList {[ 
	{ "name": "s_axi_cmd_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cmd", "role": "AWADDR" },"address":[{"name":"video_mandelbrot_generator","role":"start","value":"0","valid_bit":"0"},{"name":"video_mandelbrot_generator","role":"continue","value":"0","valid_bit":"4"},{"name":"video_mandelbrot_generator","role":"auto_start","value":"0","valid_bit":"7"},{"name":"re_V","role":"data","value":"16"},{"name":"im_V","role":"data","value":"24"},{"name":"zoom_factor_V","role":"data","value":"32"}] },
	{ "name": "s_axi_cmd_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "AWVALID" } },
	{ "name": "s_axi_cmd_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "AWREADY" } },
	{ "name": "s_axi_cmd_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "WVALID" } },
	{ "name": "s_axi_cmd_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "WREADY" } },
	{ "name": "s_axi_cmd_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cmd", "role": "WDATA" } },
	{ "name": "s_axi_cmd_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmd", "role": "WSTRB" } },
	{ "name": "s_axi_cmd_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cmd", "role": "ARADDR" },"address":[{"name":"video_mandelbrot_generator","role":"start","value":"0","valid_bit":"0"},{"name":"video_mandelbrot_generator","role":"done","value":"0","valid_bit":"1"},{"name":"video_mandelbrot_generator","role":"idle","value":"0","valid_bit":"2"},{"name":"video_mandelbrot_generator","role":"ready","value":"0","valid_bit":"3"},{"name":"video_mandelbrot_generator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_cmd_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "ARVALID" } },
	{ "name": "s_axi_cmd_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "ARREADY" } },
	{ "name": "s_axi_cmd_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "RVALID" } },
	{ "name": "s_axi_cmd_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "RREADY" } },
	{ "name": "s_axi_cmd_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cmd", "role": "RDATA" } },
	{ "name": "s_axi_cmd_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cmd", "role": "RRESP" } },
	{ "name": "s_axi_cmd_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "BVALID" } },
	{ "name": "s_axi_cmd_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "BREADY" } },
	{ "name": "s_axi_cmd_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cmd", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "video_mandelbrot_generator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6240002", "EstimateLatencyMax" : "615840002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "video_mandelbrot_gen_1_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "re_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "im_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zoom_factor_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_0_data_stream_V_s", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Loop_out_proc28_U0", "Port" : "img_0_data_stream_V_s"},
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "img_0_data_stream_V_s"}]},
			{"Name" : "img_0_data_stream_V_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Loop_out_proc28_U0", "Port" : "img_0_data_stream_V_1"},
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "img_0_data_stream_V_1"}]},
			{"Name" : "img_0_data_stream_V_2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Loop_out_proc28_U0", "Port" : "img_0_data_stream_V_2"},
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "img_0_data_stream_V_2"}]},
			{"Name" : "img_0_rows_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "img_0_rows_V"}]},
			{"Name" : "img_0_cols_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "img_0_cols_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_cmd_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_gen_1_U0", "Parent" : "0",
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
			{"Name" : "re_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "re_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "im_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "im_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zoom_factor_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "zoom_factor_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_Loop_out_proc28_U0_U",
		"Port" : [
			{"Name" : "im_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "im_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "re_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "re_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zoom_factor_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "zoom_factor_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0.video_mandelbrot_generator_mul_mul_17ns_7ns_24_1_1_U7", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U8", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U9", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U10", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U11", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_out_proc28_U0.video_mandelbrot_generator_mul_mul_19s_19s_38_1_1_U12", "Parent" : "3"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "482401",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Mat2AXIvideo_U0_U",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "img_0_rows_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_0_cols_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_0_data_stream_V_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.re_V_c_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.im_V_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zoom_factor_V_c_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_V_s_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_V_1_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_V_2_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_out_proc28_U0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIvideo_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	video_mandelbrot_generator {
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 3}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 3}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 3}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 3}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 3}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 3}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 3}
		re_V {Type I LastRead 0 FirstWrite -1}
		im_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}
		img_0_data_stream_V_s {Type IO LastRead -1 FirstWrite -1}
		img_0_data_stream_V_1 {Type IO LastRead -1 FirstWrite -1}
		img_0_data_stream_V_2 {Type IO LastRead -1 FirstWrite -1}
		img_0_rows_V {Type I LastRead -1 FirstWrite -1}
		img_0_cols_V {Type I LastRead -1 FirstWrite -1}}
	video_mandelbrot_gen_1 {
		re_V {Type I LastRead 0 FirstWrite -1}
		im_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}
		re_V_out {Type O LastRead -1 FirstWrite 0}
		im_V_out {Type O LastRead -1 FirstWrite 0}
		zoom_factor_V_out {Type O LastRead -1 FirstWrite 0}}
	Loop_out_proc28 {
		im_V {Type I LastRead 0 FirstWrite -1}
		re_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}
		img_0_data_stream_V_s {Type O LastRead -1 FirstWrite 8}
		img_0_data_stream_V_1 {Type O LastRead -1 FirstWrite 8}
		img_0_data_stream_V_2 {Type O LastRead -1 FirstWrite 8}}
	Mat2AXIvideo {
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}
		img_0_rows_V {Type I LastRead -1 FirstWrite -1}
		img_0_cols_V {Type I LastRead -1 FirstWrite -1}
		img_0_data_stream_V_s {Type I LastRead 3 FirstWrite -1}
		img_0_data_stream_V_1 {Type I LastRead 3 FirstWrite -1}
		img_0_data_stream_V_2 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6240002", "Max" : "615840002"}
	, {"Name" : "Interval", "Min" : "6240002", "Max" : "615840002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
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
