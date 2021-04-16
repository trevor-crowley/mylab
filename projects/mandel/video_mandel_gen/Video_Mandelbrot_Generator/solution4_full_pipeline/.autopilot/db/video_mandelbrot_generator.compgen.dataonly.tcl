# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_cmd {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
re_V { 
	dir I
	width 18
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
im_V { 
	dir I
	width 18
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
zoom_factor_V { 
	dir I
	width 18
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict cmd $port_cmd


