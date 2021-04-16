`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
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
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Florent W.
// 
// Create Date: 07/09/2018
// Design Name: AXI4S
// Module Name: Green Processing
// Project Name: Xilinx Video Beginner Series 13
// Target Devices: N/A (Simulation only)
// Tool Versions: 2018.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//  IMPORTANT NOTE: THIS IP IS A DUMMY FUNCTION NOT TO BE USED ONLY IN THE
//                  VIDEO BEGINNER SERIES 13 SIMULATION PROJECT
//////////////////////////////////////////////////////////////////////////////////

	module Green_processing_v1_0
	(
		input wire  aclk,
		input wire  aresetn,
		
		//Slave interface (Input)
		output wire  axis_green_in_tready,
		input wire [7 : 0] axis_green_in_tdata,
		input wire  axis_green_in_tlast,
		input wire  axis_green_in_tvalid,
		input wire  axis_green_in_tuser,

        //Master interface (Output)
		output wire  axis_green_out_tvalid,
		output wire [7 : 0] axis_green_out_tdata,
		output wire  axis_green_out_tlast,
		output wire  axis_green_out_tuser,
		input wire  axis_green_out_tready
	);
	
	reg [(5*8)-1:0] tdata  = 0;
	reg tlast=0,tuser=0,tvalid_out;
	reg last_data = 0;
	wire tready;
	wire almost_empty_axis, almost_full_axis, tvalid;
	
	integer data_count = 0;
	reg start_outputting=0;
	
    xpm_fifo_axis #(
      .CDC_SYNC_STAGES(5),            // DECIMAL
      .CLOCKING_MODE("common_clock"), // String
      .ECC_MODE("no_ecc"),            // String
      .FIFO_DEPTH(128),               // DECIMAL
      .FIFO_MEMORY_TYPE("auto"),      // String
      .PACKET_FIFO("false"),          // String
      .PROG_EMPTY_THRESH(5),          // DECIMAL
      .PROG_FULL_THRESH(122),         // DECIMAL
      .RD_DATA_COUNT_WIDTH(1),        // DECIMAL
      .RELATED_CLOCKS(0),             // DECIMAL
      .TDATA_WIDTH(8),               // DECIMAL
      .TDEST_WIDTH(1),                // DECIMAL
      .TID_WIDTH(1),                  // DECIMAL
      .TUSER_WIDTH(1),                // DECIMAL
      .USE_ADV_FEATURES("1000"),      // String
      .WR_DATA_COUNT_WIDTH(1)         // DECIMAL
    )
    xpm_fifo_axis_inst (
      .m_axis_tdata(axis_green_out_tdata),        
      .m_axis_tlast(axis_green_out_tlast),    
      .m_axis_tuser(axis_green_out_tuser),   
      .m_axis_tvalid(tvalid),    
      .s_axis_tready(axis_green_in_tready),    
      .m_aclk(aclk),
      .m_axis_tready(tready),
      .s_aclk(aclk),
      .s_aresetn(aresetn),
      .s_axis_tdata(axis_green_in_tdata),   
      .s_axis_tlast(axis_green_in_tlast),
      .s_axis_tuser(axis_green_in_tuser),    
      .s_axis_tvalid(axis_green_in_tvalid)
    );
    
    always @(posedge aclk) begin
          if(aresetn == 0) begin
            data_count = 0;
            start_outputting = 0;
          end
          else begin
          
            if((axis_green_in_tready==1)&&(axis_green_in_tvalid==1))
                data_count = data_count + 1;
                
            if(data_count > 4)
                start_outputting = 1;
            else
                start_outputting = 0;
              
            tvalid_out = tvalid && start_outputting;  
          end
       end
       
     
     assign axis_green_out_tvalid = tvalid_out;
     assign tready = axis_green_out_tready&&start_outputting;

endmodule
	

                    
