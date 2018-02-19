      // setting up TPG_1
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10010, 0,  height,       mBresp ); //height
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10018, 0,  width,        mBresp ); //width
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10020, 0, 'h0000000f,    mBresp ); //bckgndId
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10028, 0, 'h00000000,    mBresp ); //ovrlayId
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10030, 0, 'h00000000,    mBresp ); //maskId
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10038, 0, 'h00000000,    mBresp ); //motionSpeed
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10040, 0,  video_format, mBresp ); //colorFormat
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10048, 0, 'h00000000,    mBresp ); //crossHairX
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10050, 0, 'h00000000,    mBresp ); //crossHairY
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10058, 0, 'h00000000,    mBresp ); //ZplateHorContStart
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10060, 0, 'h00000000,    mBresp ); //ZplateHorContDelta
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10068, 0, 'h00000000,    mBresp ); //ZplateVerContStart
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10070, 0, 'h00000000,    mBresp ); //ZplateVerContDelta
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10078, 0, 'h00000000,    mBresp ); //boxSize
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10080, 0, 'h00000000,    mBresp ); //boxColorR
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10088, 0, 'h00000000,    mBresp ); //boxColorG
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10090, 0, 'h00000000,    mBresp ); //boxColorB
      mst_agent.AXI4LITE_WRITE_BURST ('h44a10098, 0, 'h00000001,    mBresp ); //enable_input
      mst_agent.AXI4LITE_WRITE_BURST ('h44a100a0, 0, 'h00000000,    mBresp ); //passthruStartX
      mst_agent.AXI4LITE_WRITE_BURST ('h44a100a8, 0, 'h00000000,    mBresp ); //passthruStartY
      mst_agent.AXI4LITE_WRITE_BURST ('h44a100b0, 0, 'h00000100,    mBresp ); //passthruEndX
      mst_agent.AXI4LITE_WRITE_BURST ('h44a100b8, 0, 'h00000100,    mBresp ); //passthruEndY

      // setting up TPG_0
      mst_agent.AXI4LITE_WRITE_BURST('h44a00010, 0,  height,       mBresp ); //height
      mst_agent.AXI4LITE_WRITE_BURST('h44a00018, 0,  width,        mBresp ); //width
      mst_agent.AXI4LITE_WRITE_BURST('h44a00020, 0, 'h0000000a,    mBresp ); //bckgndId
      mst_agent.AXI4LITE_WRITE_BURST('h44a00028, 0, 'h00000000,    mBresp ); //ovrlayId
      mst_agent.AXI4LITE_WRITE_BURST('h44a00030, 0, 'h00000000,    mBresp ); //maskId
      mst_agent.AXI4LITE_WRITE_BURST('h44a00038, 0, 'h00000000,    mBresp ); //motionSpeed
      mst_agent.AXI4LITE_WRITE_BURST('h44a00040, 0,  video_format, mBresp ); //colorFormat
      mst_agent.AXI4LITE_WRITE_BURST('h44a00048, 0, 'h00000000,    mBresp ); //crossHairX
      mst_agent.AXI4LITE_WRITE_BURST('h44a00050, 0, 'h00000000,    mBresp ); //crossHairY
      mst_agent.AXI4LITE_WRITE_BURST('h44a00058, 0, 'h00000000,    mBresp ); //ZplateHorContStart
      mst_agent.AXI4LITE_WRITE_BURST('h44a00060, 0, 'h00000000,    mBresp ); //ZplateHorContDelta
      mst_agent.AXI4LITE_WRITE_BURST('h44a00068, 0, 'h00000000,    mBresp ); //ZplateVerContStart
      mst_agent.AXI4LITE_WRITE_BURST('h44a00070, 0, 'h00000000,    mBresp ); //ZplateVerContDelta
      mst_agent.AXI4LITE_WRITE_BURST('h44a00078, 0, 'h00000000,    mBresp ); //boxSize
      mst_agent.AXI4LITE_WRITE_BURST('h44a00080, 0, 'h00000000,    mBresp ); //boxColorR
      mst_agent.AXI4LITE_WRITE_BURST('h44a00088, 0, 'h00000000,    mBresp ); //boxColorG
      mst_agent.AXI4LITE_WRITE_BURST('h44a00090, 0, 'h00000000,    mBresp ); //boxColorB
      mst_agent.AXI4LITE_WRITE_BURST('h44a00098, 0, 'h00000000,    mBresp ); //enable_input

      // setting VTC timing parameters
      //set up V and H porch and blanking information
      param[0] = 32;
      param[1] = 32*sample_per_clk;
      param[2] = 32;
      param[3] = 8;
      param[4] = 8;
      param[5] = 8;

      tmp[12:0] = width/sample_per_clk;
      tmp[28:16] = height;
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40060, 0, tmp, mBresp ); // active v and h size

      tmp = width/sample_per_clk + param[0] + param[1] + param[2];
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40070, 0, tmp, mBresp ); // frame h size

      tmp[12:0] = width/sample_per_clk + param[0];
      tmp[28:16] = width/sample_per_clk + param[0] + param[1];
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40078, 0, tmp, mBresp ); // h sync

      tmp[12:0] = width/sample_per_clk; // h blank start
      tmp[28:16] = width/sample_per_clk; // h blank end
      mst_agent.AXI4LITE_WRITE_BURST ('h44a4007C, 0, tmp, mBresp ); // v blank

      tmp[12:0] = height + param[3] + param[4] + param[5];
      tmp[28:16] = height + param[3] + param[4] + param[5];
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40074, 0, tmp, mBresp ); // frame h size

      tmp[12:0] = height + param[3];
      tmp[28:16] = height + param[3] + param[4];
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40080, 0, tmp, mBresp ); // frame h size

      tmp[12:0] = width/sample_per_clk;
      tmp[28:16] = width/sample_per_clk;
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40084, 0, tmp, mBresp ); // frame h size

      mst_agent.AXI4LITE_WRITE_BURST ('h44a40000, 0, 'h00000002, mBresp ); //update registories VTC
      mst_agent.AXI4LITE_WRITE_BURST ('h44a40000, 0, 'h00000001, mBresp ); //start the VTC
      // setting VTC timing parameters - end

      while(vsync_int == 0)
        #(13468); // wait till very first vsync_int goes high
        mst_agent.AXI4LITE_WRITE_BURST ('h44a00000, 0, 'h00000081, mBresp ); // start the TPG_0
        #(13468);
        mst_agent.AXI4LITE_WRITE_BURST ('h44a10000, 0, 'h00000081, mBresp ); //start the TPG_1

      end

    end

    //detect rising edge of vsync
    always@(posedge clk37_125m, reset)begin
      if(reset == 1)begin
        vsync_d1 <= 0;
        vsync_int <= 0;
      end else begin
        vsync_int <= vsync_d1 & DUT.v_axi4s_vid_out_0.vtg_vsync;
        vsync_d1 <= !DUT.v_axi4s_vid_out_0.vtg_vsync;
      end
    end

    // these 2 loops are to detect if the lock signal goes high and will continue for few more frames.
    reg [3:0] after_lock_counter;
    reg vid_lock;
    always@(posedge clk37_125m)begin
      vid_lock <= DUT.v_axi4s_vid_out_0.locked;
    end
    wire count_en = vid_lock & vsync_int; // vsync_int indicates start of frame and lock signal indicates valid video signal

   always@(posedge clk37_125m, reset)begin
      if(reset == 1)begin
        after_lock_counter <= 0;
      end else begin
        if(after_lock_counter == 3)begin
          after_lock_counter <= after_lock_counter;
          $display("Test Completed Successfully");
          $stop;

      end else if(count_en == 1)begin
          after_lock_counter <= after_lock_counter + 1;
        end
      end
    end

    // this loop is to detect and stop in case the test is not passing
    reg [3:0] lock_check_counter;
    always@(posedge clk37_125m, reset)begin
      if(reset == 1)begin
        lock_check_counter <= 0;
      end else begin
        if(lock_check_counter == 9)begin
          lock_check_counter <= lock_check_counter;
          $display("Test Failed: lock didn't go high");// if lock went high, simulation should have been stopped with the after_lock_counter
          $stop;

        end else if(vsync_int == 1)begin
          lock_check_counter <= lock_check_counter + 1;
        end
      end
    end

    // instantiate bd
    ex_sim DUT(
      .reset(reset),
      .aclk(clk37_125m)
    );
