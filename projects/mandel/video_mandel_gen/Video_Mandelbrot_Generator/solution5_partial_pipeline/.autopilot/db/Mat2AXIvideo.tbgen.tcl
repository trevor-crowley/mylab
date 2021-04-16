set moduleName Mat2AXIvideo
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
set C_modelName {Mat2AXIvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ AXI_video_strm_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ AXI_video_strm_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ AXI_video_strm_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ AXI_video_strm_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ AXI_video_strm_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ AXI_video_strm_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ AXI_video_strm_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ img_0_data_stream_V_s int 8 regular {fifo 0 volatile } {global 0}  }
	{ img_0_data_stream_V_1 int 8 regular {fifo 0 volatile } {global 0}  }
	{ img_0_data_stream_V_2 int 8 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_0_data_stream_V_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "img_0_data_stream_V_1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "img_0_data_stream_V_2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 0 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 6 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 1 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 2 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 3 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 4 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 5 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 6 } 
	{ img_0_data_stream_V_s_dout sc_in sc_lv 8 signal 7 } 
	{ img_0_data_stream_V_s_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_0_data_stream_V_s_read sc_out sc_logic 1 signal 7 } 
	{ img_0_data_stream_V_1_dout sc_in sc_lv 8 signal 8 } 
	{ img_0_data_stream_V_1_empty_n sc_in sc_logic 1 signal 8 } 
	{ img_0_data_stream_V_1_read sc_out sc_logic 1 signal 8 } 
	{ img_0_data_stream_V_2_dout sc_in sc_lv 8 signal 9 } 
	{ img_0_data_stream_V_2_empty_n sc_in sc_logic 1 signal 9 } 
	{ img_0_data_stream_V_2_read sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "img_0_data_stream_V_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_V_s", "role": "dout" }} , 
 	{ "name": "img_0_data_stream_V_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_s", "role": "empty_n" }} , 
 	{ "name": "img_0_data_stream_V_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_s", "role": "read" }} , 
 	{ "name": "img_0_data_stream_V_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_V_1", "role": "dout" }} , 
 	{ "name": "img_0_data_stream_V_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_1", "role": "empty_n" }} , 
 	{ "name": "img_0_data_stream_V_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_1", "role": "read" }} , 
 	{ "name": "img_0_data_stream_V_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_V_2", "role": "dout" }} , 
 	{ "name": "img_0_data_stream_V_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_2", "role": "empty_n" }} , 
 	{ "name": "img_0_data_stream_V_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_V_2", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "img_0_data_stream_V_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_data_stream_V_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_0_data_stream_V_2_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1", "Max" : "482401"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "482401"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AXI_video_strm_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 }  { m_axis_video_TREADY out_acc 0 1 } } }
	AXI_video_strm_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	AXI_video_strm_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	AXI_video_strm_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	AXI_video_strm_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	AXI_video_strm_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	AXI_video_strm_V_dest_V { axis {  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TDEST out_data 1 1 } } }
	img_0_data_stream_V_s { ap_fifo {  { img_0_data_stream_V_s_dout fifo_data 0 8 }  { img_0_data_stream_V_s_empty_n fifo_status 0 1 }  { img_0_data_stream_V_s_read fifo_update 1 1 } } }
	img_0_data_stream_V_1 { ap_fifo {  { img_0_data_stream_V_1_dout fifo_data 0 8 }  { img_0_data_stream_V_1_empty_n fifo_status 0 1 }  { img_0_data_stream_V_1_read fifo_update 1 1 } } }
	img_0_data_stream_V_2 { ap_fifo {  { img_0_data_stream_V_2_dout fifo_data 0 8 }  { img_0_data_stream_V_2_empty_n fifo_status 0 1 }  { img_0_data_stream_V_2_read fifo_update 1 1 } } }
}
