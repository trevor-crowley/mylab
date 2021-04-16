// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_m_axis_video_TDATA "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_data_V.dat"
`define EGRESS_STATUS_m_axis_video_TDATA "../tv/stream_size/stream_egress_status_m_axis_video_V_data_V.dat"
`define TV_OUT_m_axis_video_TKEEP "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_keep_V.dat"
`define EGRESS_STATUS_m_axis_video_TKEEP "../tv/stream_size/stream_egress_status_m_axis_video_V_keep_V.dat"
`define TV_OUT_m_axis_video_TSTRB "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_strb_V.dat"
`define EGRESS_STATUS_m_axis_video_TSTRB "../tv/stream_size/stream_egress_status_m_axis_video_V_strb_V.dat"
`define TV_OUT_m_axis_video_TUSER "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_user_V.dat"
`define EGRESS_STATUS_m_axis_video_TUSER "../tv/stream_size/stream_egress_status_m_axis_video_V_user_V.dat"
`define TV_OUT_m_axis_video_TLAST "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_last_V.dat"
`define EGRESS_STATUS_m_axis_video_TLAST "../tv/stream_size/stream_egress_status_m_axis_video_V_last_V.dat"
`define TV_OUT_m_axis_video_TID "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_id_V.dat"
`define EGRESS_STATUS_m_axis_video_TID "../tv/stream_size/stream_egress_status_m_axis_video_V_id_V.dat"
`define TV_OUT_m_axis_video_TDEST "../tv/rtldatafile/rtl.video_mandelbrot_generator.autotvout_m_axis_video_V_dest_V.dat"
`define EGRESS_STATUS_m_axis_video_TDEST "../tv/stream_size/stream_egress_status_m_axis_video_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_m_axis_video (
    input clk,
    input reset,
    input [24 - 1:0] TRAN_m_axis_video_TDATA,
    input [3 - 1:0] TRAN_m_axis_video_TKEEP,
    input [3 - 1:0] TRAN_m_axis_video_TSTRB,
    input TRAN_m_axis_video_TUSER,
    input TRAN_m_axis_video_TLAST,
    input TRAN_m_axis_video_TID,
    input TRAN_m_axis_video_TDEST,
    input TRAN_m_axis_video_TVALID,
    output TRAN_m_axis_video_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_m_axis_video_TVALID_temp;
    wire m_axis_video_TDATA_full;
    wire m_axis_video_TDATA_empty;
    reg m_axis_video_TDATA_write_en;
    reg [24 - 1:0] m_axis_video_TDATA_write_data;
    reg m_axis_video_TDATA_read_en;
    wire [24 - 1:0] m_axis_video_TDATA_read_data;
    
    fifo #(48, 24) fifo_m_axis_video_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TDATA_write_en),
        .write_data(m_axis_video_TDATA_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TDATA_read_en),
        .read_data(m_axis_video_TDATA_read_data),
        .full(m_axis_video_TDATA_full),
        .empty(m_axis_video_TDATA_empty));
    
    always @ (*) begin
        m_axis_video_TDATA_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TDATA_write_data <= TRAN_m_axis_video_TDATA;
        m_axis_video_TDATA_read_en <= 0;
    end
    wire m_axis_video_TKEEP_full;
    wire m_axis_video_TKEEP_empty;
    reg m_axis_video_TKEEP_write_en;
    reg [3 - 1:0] m_axis_video_TKEEP_write_data;
    reg m_axis_video_TKEEP_read_en;
    wire [3 - 1:0] m_axis_video_TKEEP_read_data;
    
    fifo #(48, 3) fifo_m_axis_video_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TKEEP_write_en),
        .write_data(m_axis_video_TKEEP_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TKEEP_read_en),
        .read_data(m_axis_video_TKEEP_read_data),
        .full(m_axis_video_TKEEP_full),
        .empty(m_axis_video_TKEEP_empty));
    
    always @ (*) begin
        m_axis_video_TKEEP_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TKEEP_write_data <= TRAN_m_axis_video_TKEEP;
        m_axis_video_TKEEP_read_en <= 0;
    end
    wire m_axis_video_TSTRB_full;
    wire m_axis_video_TSTRB_empty;
    reg m_axis_video_TSTRB_write_en;
    reg [3 - 1:0] m_axis_video_TSTRB_write_data;
    reg m_axis_video_TSTRB_read_en;
    wire [3 - 1:0] m_axis_video_TSTRB_read_data;
    
    fifo #(48, 3) fifo_m_axis_video_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TSTRB_write_en),
        .write_data(m_axis_video_TSTRB_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TSTRB_read_en),
        .read_data(m_axis_video_TSTRB_read_data),
        .full(m_axis_video_TSTRB_full),
        .empty(m_axis_video_TSTRB_empty));
    
    always @ (*) begin
        m_axis_video_TSTRB_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TSTRB_write_data <= TRAN_m_axis_video_TSTRB;
        m_axis_video_TSTRB_read_en <= 0;
    end
    wire m_axis_video_TUSER_full;
    wire m_axis_video_TUSER_empty;
    reg m_axis_video_TUSER_write_en;
    reg [1 - 1:0] m_axis_video_TUSER_write_data;
    reg m_axis_video_TUSER_read_en;
    wire [1 - 1:0] m_axis_video_TUSER_read_data;
    
    fifo #(48, 1) fifo_m_axis_video_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TUSER_write_en),
        .write_data(m_axis_video_TUSER_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TUSER_read_en),
        .read_data(m_axis_video_TUSER_read_data),
        .full(m_axis_video_TUSER_full),
        .empty(m_axis_video_TUSER_empty));
    
    always @ (*) begin
        m_axis_video_TUSER_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TUSER_write_data <= TRAN_m_axis_video_TUSER;
        m_axis_video_TUSER_read_en <= 0;
    end
    wire m_axis_video_TLAST_full;
    wire m_axis_video_TLAST_empty;
    reg m_axis_video_TLAST_write_en;
    reg [1 - 1:0] m_axis_video_TLAST_write_data;
    reg m_axis_video_TLAST_read_en;
    wire [1 - 1:0] m_axis_video_TLAST_read_data;
    
    fifo #(48, 1) fifo_m_axis_video_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TLAST_write_en),
        .write_data(m_axis_video_TLAST_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TLAST_read_en),
        .read_data(m_axis_video_TLAST_read_data),
        .full(m_axis_video_TLAST_full),
        .empty(m_axis_video_TLAST_empty));
    
    always @ (*) begin
        m_axis_video_TLAST_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TLAST_write_data <= TRAN_m_axis_video_TLAST;
        m_axis_video_TLAST_read_en <= 0;
    end
    wire m_axis_video_TID_full;
    wire m_axis_video_TID_empty;
    reg m_axis_video_TID_write_en;
    reg [1 - 1:0] m_axis_video_TID_write_data;
    reg m_axis_video_TID_read_en;
    wire [1 - 1:0] m_axis_video_TID_read_data;
    
    fifo #(48, 1) fifo_m_axis_video_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TID_write_en),
        .write_data(m_axis_video_TID_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TID_read_en),
        .read_data(m_axis_video_TID_read_data),
        .full(m_axis_video_TID_full),
        .empty(m_axis_video_TID_empty));
    
    always @ (*) begin
        m_axis_video_TID_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TID_write_data <= TRAN_m_axis_video_TID;
        m_axis_video_TID_read_en <= 0;
    end
    wire m_axis_video_TDEST_full;
    wire m_axis_video_TDEST_empty;
    reg m_axis_video_TDEST_write_en;
    reg [1 - 1:0] m_axis_video_TDEST_write_data;
    reg m_axis_video_TDEST_read_en;
    wire [1 - 1:0] m_axis_video_TDEST_read_data;
    
    fifo #(48, 1) fifo_m_axis_video_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_video_TDEST_write_en),
        .write_data(m_axis_video_TDEST_write_data),
        .read_clock(clk),
        .read_en(m_axis_video_TDEST_read_en),
        .read_data(m_axis_video_TDEST_read_data),
        .full(m_axis_video_TDEST_full),
        .empty(m_axis_video_TDEST_empty));
    
    always @ (*) begin
        m_axis_video_TDEST_write_en <= TRAN_m_axis_video_TVALID;
        m_axis_video_TDEST_write_data <= TRAN_m_axis_video_TDEST;
        m_axis_video_TDEST_read_en <= 0;
    end
    assign TRAN_m_axis_video_TVALID = TRAN_m_axis_video_TVALID_temp;

    
    assign TRAN_m_axis_video_TREADY = ~(m_axis_video_TDATA_full || m_axis_video_TKEEP_full || m_axis_video_TSTRB_full || m_axis_video_TUSER_full || m_axis_video_TLAST_full || m_axis_video_TID_full || m_axis_video_TDEST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [175:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [175:0] rm_0x(input [175:0] token);
        reg [175:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TDATA;
    
    assign transaction = transaction_save_m_axis_video_TDATA;
    
    initial begin : AXI_stream_receiver_m_axis_video_TDATA
        integer fp;
        reg [24 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TDATA = 0;
        fifo_m_axis_video_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TDATA);
                while (~fifo_m_axis_video_TDATA.empty) begin
                    fifo_m_axis_video_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TDATA = transaction_save_m_axis_video_TDATA + 1;
                fifo_m_axis_video_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TKEEP;
    
    initial begin : AXI_stream_receiver_m_axis_video_TKEEP
        integer fp;
        reg [3 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TKEEP = 0;
        fifo_m_axis_video_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TKEEP);
                while (~fifo_m_axis_video_TKEEP.empty) begin
                    fifo_m_axis_video_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TKEEP = transaction_save_m_axis_video_TKEEP + 1;
                fifo_m_axis_video_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TSTRB;
    
    initial begin : AXI_stream_receiver_m_axis_video_TSTRB
        integer fp;
        reg [3 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TSTRB = 0;
        fifo_m_axis_video_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TSTRB);
                while (~fifo_m_axis_video_TSTRB.empty) begin
                    fifo_m_axis_video_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TSTRB = transaction_save_m_axis_video_TSTRB + 1;
                fifo_m_axis_video_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TUSER;
    
    initial begin : AXI_stream_receiver_m_axis_video_TUSER
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TUSER = 0;
        fifo_m_axis_video_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TUSER);
                while (~fifo_m_axis_video_TUSER.empty) begin
                    fifo_m_axis_video_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TUSER = transaction_save_m_axis_video_TUSER + 1;
                fifo_m_axis_video_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TLAST;
    
    initial begin : AXI_stream_receiver_m_axis_video_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TLAST = 0;
        fifo_m_axis_video_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TLAST);
                while (~fifo_m_axis_video_TLAST.empty) begin
                    fifo_m_axis_video_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TLAST = transaction_save_m_axis_video_TLAST + 1;
                fifo_m_axis_video_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TID;
    
    initial begin : AXI_stream_receiver_m_axis_video_TID
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TID = 0;
        fifo_m_axis_video_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TID);
                while (~fifo_m_axis_video_TID.empty) begin
                    fifo_m_axis_video_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TID = transaction_save_m_axis_video_TID + 1;
                fifo_m_axis_video_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_video_TDEST;
    
    initial begin : AXI_stream_receiver_m_axis_video_TDEST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_video_TDEST = 0;
        fifo_m_axis_video_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_video_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_video_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_video_TDEST);
                while (~fifo_m_axis_video_TDEST.empty) begin
                    fifo_m_axis_video_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_video_TDEST = transaction_save_m_axis_video_TDEST + 1;
                fifo_m_axis_video_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
