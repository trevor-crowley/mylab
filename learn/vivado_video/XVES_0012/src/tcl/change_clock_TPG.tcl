disconnect_bd_net [get_bd_nets -of_objects [get_bd_pins v_tpg_0/ap_rst_n]] [get_bd_pins v_tpg_0/ap_rst_n]
disconnect_bd_net [get_bd_nets -of_objects [get_bd_pins v_tpg_0/ap_clk]] [get_bd_pins v_tpg_0/ap_clk]
disconnect_bd_net [get_bd_nets -of_objects [get_bd_pins axi_vip_0/aclk]] [get_bd_pins axi_vip_0/aclk]
disconnect_bd_net [get_bd_nets -of_objects [get_bd_pins axi_vip_0/aresetn]] [get_bd_pins axi_vip_0/aresetn]

connect_bd_net [get_bd_ports aresetn_1] [get_bd_pins v_tpg_0/ap_rst_n]
connect_bd_net [get_bd_ports aclk_20MHz] [get_bd_pins v_tpg_0/ap_clk]
connect_bd_net [get_bd_ports aresetn_1] [get_bd_pins axi_vip_0/aresetn]
connect_bd_net [get_bd_ports aclk_20MHz] [get_bd_pins axi_vip_0/aclk]
