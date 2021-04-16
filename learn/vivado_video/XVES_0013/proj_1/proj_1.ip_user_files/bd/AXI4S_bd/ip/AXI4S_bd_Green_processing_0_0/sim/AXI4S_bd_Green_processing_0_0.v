// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:XVES:Green_processing:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module AXI4S_bd_Green_processing_0_0 (
  aclk,
  aresetn,
  axis_green_in_tdata,
  axis_green_in_tlast,
  axis_green_in_tvalid,
  axis_green_in_tuser,
  axis_green_in_tready,
  axis_green_out_tdata,
  axis_green_out_tlast,
  axis_green_out_tuser,
  axis_green_out_tvalid,
  axis_green_out_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF AXIS_green_out:AXIS_green_in, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN AXI4S_bd_aclk_40MHz, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_in TDATA" *)
input wire [7 : 0] axis_green_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_in TLAST" *)
input wire axis_green_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_in TVALID" *)
input wire axis_green_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_in TUSER" *)
input wire axis_green_in_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_green_in, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN AXI4S_bd_aclk_40MHz, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_in TREADY" *)
output wire axis_green_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_out TDATA" *)
output wire [7 : 0] axis_green_out_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_out TLAST" *)
output wire axis_green_out_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_out TUSER" *)
output wire axis_green_out_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_out TVALID" *)
output wire axis_green_out_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_green_out, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN AXI4S_bd_aclk_40MHz, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_green_out TREADY" *)
input wire axis_green_out_tready;

  Green_processing_v1_0 inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .axis_green_in_tdata(axis_green_in_tdata),
    .axis_green_in_tlast(axis_green_in_tlast),
    .axis_green_in_tvalid(axis_green_in_tvalid),
    .axis_green_in_tuser(axis_green_in_tuser),
    .axis_green_in_tready(axis_green_in_tready),
    .axis_green_out_tdata(axis_green_out_tdata),
    .axis_green_out_tlast(axis_green_out_tlast),
    .axis_green_out_tuser(axis_green_out_tuser),
    .axis_green_out_tvalid(axis_green_out_tvalid),
    .axis_green_out_tready(axis_green_out_tready)
  );
endmodule
