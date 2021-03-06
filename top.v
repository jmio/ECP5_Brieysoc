module top(
	input wire clk25,
	input wire cpu_reset_n,

	output wire serial_tx,
	input wire serial_rx,

	output reg user_led_n0,
	output reg user_led_n1,
	output reg user_led_n2,

	output wire spiflash_cs_n,
	input wire spiflash_mosi,
	input wire spiflash_miso,

	output wire sdram_clock,
	output wire [12:0] sdram_a,
	inout wire [15:0] sdram_dq,
	output wire sdram_we_n,
	output wire sdram_ras_n,
	output wire sdram_cas_n,
	output wire sdram_cs_n,
	output wire sdram_cke,
	output wire [1:0] sdram_ba,
	output wire [1:0] sdram_dm,

	output wire gpdi_clk_p,
	output wire gpdi_data0_p,
	output wire gpdi_data1_p,
	output wire gpdi_data2_p,

  //inout wire sd_d2,
  inout wire sd_d3_cs,
  inout wire sd_cmd_mosi,
  inout wire sd_clk,
  inout wire sd_d0_miso,
  //inout wire sd_d1,

	input wire io_jtag_tms, // input
	input wire io_jtag_tdi, // input
	output wire io_jtag_tdo, // output
	input wire io_jtag_tck, // input

  //lcd
  output wire [4:0] LCD_R,
  output wire [5:0] LCD_G,
  output wire [4:0] LCD_B,
  output wire LCD_CLK,
  output wire LCD_HSYNC,
  output wire LCD_VSYNC,
  output wire LCD_DEN
);

reg lcdclk;
reg[19:0] counter; // RESET COUNTER
wire locked;


EHXPLLL #(
  .CLKFB_DIV(5'd16),
  .CLKI_DIV(1'd1),
  .CLKOP_CPHASE(4'd9), // 7
  .CLKOP_FPHASE(1'd0),
  .CLKOP_DIV(4'd8),
  .CLKOP_ENABLE("ENABLED"),
  .CLKOS3_CPHASE(5'd23),
  .CLKOS3_DIV(1'd1),
  .CLKOS3_ENABLE("ENABLED"),
  .CLKOS3_FPHASE(1'd0),
  .CLKOS_CPHASE(4'd7), // 9
  .CLKOS_FPHASE(1'd0),
  .CLKOS_DIV(4'd8),
  .CLKOS_ENABLE("ENABLED"),
  .FEEDBK_PATH("INT_OS3")
) EHXPLLL (
  .CLKI(clk25),
  .RST(1'b0),
  .CLKOP(clk),
  .CLKOS(sdram_clock),
  .LOCK(locked)
);

// Reset Logic
always @(posedge clk) begin
  if (!cpu_reset_n) begin
    counter <= 20'b0 ;
    reset <= 1'b0;
  end else begin
    if (counter[15:0] < 16'hF000) begin
      counter <= counter + 1'b1;
    end else begin
      reset <= 1'b1;
    end
  end
  lcdclk <= !lcdclk;
end

// HDMI (NOT USED)
assign  LCD_CLK     = lcdclk ;
assign	gpdi_clk_p = 1'b0;
assign	gpdi_data0_p = 1'b0;
assign	gpdi_data1_p = 1'b0;
assign	gpdi_data2_p = 1'b0;

// SDRAM
//assign sdram_clock = clk ;

//wire[15:0] io_sdram_DQ_read;
wire[15:0] io_sdram_DQ_write;
wire[15:0] io_sdram_DQ_writeEnable;

assign sdram_dq[0]  = io_sdram_DQ_writeEnable[0]  ? io_sdram_DQ_write[0]  : 1'bz;
assign sdram_dq[1]  = io_sdram_DQ_writeEnable[1]  ? io_sdram_DQ_write[1]  : 1'bz;
assign sdram_dq[2]  = io_sdram_DQ_writeEnable[2]  ? io_sdram_DQ_write[2]  : 1'bz;
assign sdram_dq[3]  = io_sdram_DQ_writeEnable[3]  ? io_sdram_DQ_write[3]  : 1'bz;
assign sdram_dq[4]  = io_sdram_DQ_writeEnable[4]  ? io_sdram_DQ_write[4]  : 1'bz;
assign sdram_dq[5]  = io_sdram_DQ_writeEnable[5]  ? io_sdram_DQ_write[5]  : 1'bz;
assign sdram_dq[6]  = io_sdram_DQ_writeEnable[6]  ? io_sdram_DQ_write[6]  : 1'bz;
assign sdram_dq[7]  = io_sdram_DQ_writeEnable[7]  ? io_sdram_DQ_write[7]  : 1'bz;
assign sdram_dq[8]  = io_sdram_DQ_writeEnable[8]  ? io_sdram_DQ_write[8]  : 1'bz;
assign sdram_dq[9]  = io_sdram_DQ_writeEnable[9]  ? io_sdram_DQ_write[9]  : 1'bz;
assign sdram_dq[10] = io_sdram_DQ_writeEnable[10] ? io_sdram_DQ_write[10] : 1'bz;
assign sdram_dq[11] = io_sdram_DQ_writeEnable[11] ? io_sdram_DQ_write[11] : 1'bz;
assign sdram_dq[12] = io_sdram_DQ_writeEnable[12] ? io_sdram_DQ_write[12] : 1'bz;
assign sdram_dq[13] = io_sdram_DQ_writeEnable[13] ? io_sdram_DQ_write[13] : 1'bz;
assign sdram_dq[14] = io_sdram_DQ_writeEnable[14] ? io_sdram_DQ_write[14] : 1'bz;
assign sdram_dq[15] = io_sdram_DQ_writeEnable[15] ? io_sdram_DQ_write[15] : 1'bz;

wire[31:0] io_gpioA_read;
wire[31:0] io_gpioA_write;
wire[31:0] io_gpioA_writeEnable;

wire[31:0] io_gpioB_read;
wire[31:0] io_gpioB_write;
wire[31:0] io_gpioB_writeEnable;

wire [4:0]io_vga_color_r;
wire [5:0]io_vga_color_g;
wire [4:0]io_vga_color_b;

Briey u_briey (
  .io_asyncReset(!reset), // input
  .io_axiClk(clk),     // input
  .io_vgaClk(lcdclk),     // input
  
  .io_jtag_tms(io_jtag_tms), // input
  .io_jtag_tdi(io_jtag_tdi), // input
  .io_jtag_tdo(io_jtag_tdo), // output
  .io_jtag_tck(io_jtag_tck), // input

  .io_sdram_ADDR(sdram_a),            // output[10:0]
  .io_sdram_BA(sdram_ba),              // output[1:0]
  .io_sdram_DQ_read(sdram_dq),         // input[15:0]
  .io_sdram_DQ_write(io_sdram_DQ_write),        // output[15:0]
  .io_sdram_DQ_writeEnable(io_sdram_DQ_writeEnable),  // output
  .io_sdram_DQM(sdram_dm),             // output[3:0]
  .io_sdram_CASn(sdram_cas_n),            // output
  .io_sdram_CKE(sdram_cke),             // output
  .io_sdram_CSn(sdram_cs_n),             // output
  .io_sdram_RASn(sdram_ras_n),            // output
  .io_sdram_WEn(sdram_we_n),             // output
  
  .io_gpioA_read(io_gpioA_read),            // input[31:0]
  .io_gpioA_write(io_gpioA_write),           // output[31:0]
  .io_gpioA_writeEnable(io_gpioA_writeEnable),     // output[31:0]
  .io_gpioB_read(io_gpioB_read),            // input[31:0]
  .io_gpioB_write(io_gpioB_write),           // output[31:0]
  .io_gpioB_writeEnable(io_gpioB_writeEnable),     // output[31:0]
  
  .io_uart_txd(serial_tx),              // output
  .io_uart_rxd(serial_rx),              // input
 
  .io_vga_vSync(LCD_VSYNC), // output
  .io_vga_hSync(LCD_HSYNC), // output
  .io_vga_colorEn(LCD_DEN), // output
  .io_vga_color_r(io_vga_color_r), // output[4:0] 5
  .io_vga_color_g(io_vga_color_g), // output[5:0] 6
  .io_vga_color_b(io_vga_color_b), // output[4:0] 5
  .io_vgaFrameStart(LCD_START),
  
  .io_timerExternal_clear(1'b0), // input
  .io_timerExternal_tick(1'b0), // input
  .io_coreInterrupt(1'b0), // input
  
  .io_extAPB_PADDR(APB_PADDR),         //output     [3:0]
  .io_extAPB_PSEL(APB_PSEL),          //output     [0:0]
  .io_extAPB_PENABLE(APB_PENABLE),       //output
  .io_extAPB_PREADY(APB_PREADY),     //input
  .io_extAPB_PWRITE(APB_PWRITE),        //output             
  .io_extAPB_PWDATA(APB_PWDATA),        //output     [31:0]   
  .io_extAPB_PRDATA(APB_PRDATA),        //input      [31:0]   
  
  .io_extAPB2_PADDR(APB2_PADDR),         //output     [3:0]
  .io_extAPB2_PSEL(APB2_PSEL),          //output     [0:0]
  .io_extAPB2_PENABLE(APB2_PENABLE),       //output
  .io_extAPB2_PREADY(APB2_PREADY),     //input
  .io_extAPB2_PWRITE(APB2_PWRITE),        //output             
  .io_extAPB2_PWDATA(APB2_PWDATA),        //output     [31:0]   
  .io_extAPB2_PRDATA(APB2_PRDATA)        //input      [31:0]   
);

//
// APB (VRAM)
//
wire[15:0] APB_PADDR;      //output     
wire[0:0]  APB_PSEL;       //output     [0:0]
wire       APB_PENABLE;    //output
wire       APB_PREADY;     //input
wire       APB_PWRITE;     //output             
wire[31:0] APB_PWDATA;     //output   
wire[31:0] APB_PRDATA;     //input         
assign     APB_WR = APB_PSEL & APB_PENABLE & APB_PWRITE ;      
assign     APB_RD = APB_PSEL & APB_PENABLE & !APB_PWRITE ;                 
assign     APB_PREADY    = 1'b1; // NO WAIT

//
// APB2
//
wire[15:0] APB2_PADDR;      //output     
wire[0:0]  APB2_PSEL;       //output     [0:0]
wire       APB2_PENABLE;    //output
wire       APB2_PREADY;     //input
wire       APB2_PWRITE;     //output             
wire[31:0] APB2_PWDATA;     //output   
wire[31:0] APB2_PRDATA;     //input         
assign     APB2_WR = APB2_PSEL & APB2_PENABLE & APB2_PWRITE ;      
assign     APB2_RD = APB2_PSEL & APB2_PENABLE & !APB2_PWRITE ;                 
assign     APB2_PREADY    = 1'b1; // NO WAIT

// TEXT 
wire LCD_START;
reg LCD_DEN_LAST;
reg [15:0]px;
reg [15:0]py;

wire [15:0] npx;
//wire [15:0] lpx;
wire [15:0] npy;

// Hardware Cursor
reg [31:0] cursorx;
reg [31:0] cursory;
assign npx   = px + 15'd1;
assign npy   = py + 15'd1;
//assign lpx   = px - 15'd1;

always @(posedge lcdclk) begin
  if (LCD_START) begin
    px <= 16'b0;
    py <= 16'b0;
  end else begin
    if (LCD_DEN) begin
      // ?? STRANGE LOGIC ?? - DUE TO JTAG DEBUGGER CONNECT FAIL
      if (!LCD_DEN_LAST) begin 
        px <= 16'b1;
      end else begin
        px <= px + 16'b1;
      end 
    end else if (LCD_DEN_LAST) begin
      py <= py + 16'b1;
      px <= 16'b0;
    end
  end
  LCD_DEN_LAST <= LCD_DEN;
end


// FONT ROM
reg [7:0] font_mem[0:4095];
initial begin
  $readmemh("font_mem.init", font_mem);
end

// TEXT VRAM
reg [7:0] textvram[0:4095];
reg [11:0]vramaddr1;
reg [11:0]vramaddr2;
always @(posedge clk) begin
  if (APB_WR) begin
    textvram[APB_PADDR[13:2]] <= APB_PWDATA[7:0];
  end
  vramaddr1 <= APB_PADDR[13:2];
end
assign APB_PRDATA = textvram[vramaddr1];

reg[9:0] py1;
reg[9:0] px1;
reg[9:0] py2;
reg[9:0] px2;
reg pixel;
reg[7:0] pixels;
reg[7:0] chrout;
reg cursorrev;

always @(posedge lcdclk) begin
  // 0
  chrout    <= textvram[{py[9:5],px[9:3]}];
  py1       <= py;
  px1       <= px;
  // 1
  pixels    <= font_mem[{chrout[7:0],py1[4:1]}];
  cursorrev <= ((px1[10:3] == cursorx[7:0]) & (py1[12:5] == cursory[7:0]));
  py2       <= py1;
  px2       <= px1;
  // 2
  pixel     <= ((pixels[3'b111 - px2[2:0]]) ^ cursorrev) & (px >= 2) ;
end

// TEXT / GRAPHICS COMPOSE
wire[7:0] _R;
wire[7:0] _G;
wire[7:0] _B;

assign _R = pixel ? 8'hFF : { io_vga_color_r[4:0],io_vga_color_r[2:0] } ;
assign _G = pixel ? 8'hFF : { io_vga_color_g[5:0],io_vga_color_g[1:0] } ;
assign _B = pixel ? 8'hFF : { io_vga_color_b[4:0],io_vga_color_b[2:0] } ;

assign LCD_R = _R[7:3];
assign LCD_G = _G[7:2];
assign LCD_B = _B[7:3];

// SPI GPIO
reg gpioa_ready;
reg[7:0] gpioa_out; // +40
reg[7:0] gpioa_dir; // +44
reg[7:0] gpioa_pin; // +48

reg[31:0] gpioa_spiout; // +4C(WRITE)
reg[31:0] gpioa_spiin;  // +4C(READ)
reg[7:0] gpioa_spicnt; // +50
reg[7:0] gpioa_spista; // +54

// GPIOA OUTPUT DRIVERS (BIDIR)
assign sd_d0_miso  = gpioa_dir[0] ? gpioa_out[0] : 1'bz ;
assign sd_cmd_mosi = gpioa_dir[1] ? gpioa_out[1] : 1'bz ;
assign sd_clk      = gpioa_dir[2] ? gpioa_out[2] : 1'bz ;
assign sd_d3_cs    = gpioa_dir[3] ? gpioa_out[3] : 1'bz ;
assign sd_d2       = gpioa_dir[4] ? gpioa_out[4] : 1'bz ;
assign sd_d1       = gpioa_dir[5] ? gpioa_out[5] : 1'bz ;

assign adr00h = (APB2_PADDR[7:0] == 8'h00);
//
assign adr02h = (APB2_PADDR[7:0] == 8'h08); // SCL
assign adr03h = (APB2_PADDR[7:0] == 8'h0C); // SDA
assign adr04h = (APB2_PADDR[7:0] == 8'h10); // TPX
assign adr06h = (APB2_PADDR[7:0] == 8'h18); // TPY
assign adr08h = (APB2_PADDR[7:0] == 8'h20); // TPEN

assign adr10h = (APB2_PADDR[7:0] == 8'h40); // gpioa_out
assign adr11h = (APB2_PADDR[7:0] == 8'h44); // gpioa_dir
assign adr12h = (APB2_PADDR[7:0] == 8'h48); // gpioa_pin
assign adr13h = (APB2_PADDR[7:0] == 8'h4C); // gpioa_spi in/out
assign adr14h = (APB2_PADDR[7:0] == 8'h50); // gpioa_spicnt
assign adr15h = (APB2_PADDR[7:0] == 8'h54); // gpioa_spista

assign adrcsrx = (APB2_PADDR[7:0] == 8'h80); // gpioa_spista
assign adrcsry = (APB2_PADDR[7:0] == 8'h84); // gpioa_spista

assign adrtp   = (APB2_PADDR[7:4] == 4'hA); // tp sm

wire iowren,iorden;
reg  last_iowr,last_iord;
assign iord = APB2_RD;
assign iowr = APB2_WR;
assign iowren = (!last_iowr) && (iowr) ;
assign iorden = (!last_iord) && (iord) ;

reg[4:0] spi_nextbit;

always @(posedge clk) begin
  if (iowren) begin
    if (adr10h) begin
      gpioa_out[7:0] <= APB2_PWDATA[7:0];
    end
    if (adr11h) begin
      gpioa_dir[7:0] <= APB2_PWDATA[7:0];
    end
    if (adr13h) begin
      gpioa_spiout[31:0] <= APB2_PWDATA[31:0];
    end
    if (adr14h) begin
      gpioa_spiin[31:0] <= 8'h0 ;
      gpioa_spista[7:0] <= 8'h0 ;
      gpioa_out[1]      <= gpioa_spiout[APB2_PWDATA[4:0] - 5'h1]; // FIRST BIT      
      spi_nextbit[4:0]  <= APB2_PWDATA[4:0] - 5'h1;               // NEXT BIT
      gpioa_out[2]      <= 1'b0;        // CK_L()
      gpioa_spicnt[7:0] <= APB2_PWDATA[7:0] ;
    end
    if (adrcsrx) begin
      cursorx <= APB2_PWDATA;
    end
    if (adrcsry) begin
      cursory <= APB2_PWDATA;
    end
    // TP
    //tpwe <= adrtp ;
  end else begin    
    // HW SPI CONTROL
    if (gpioa_spicnt[7:0] > 8'h0) begin
      if (gpioa_spista[7:0] == 8'h0) begin
        gpioa_spiin[spi_nextbit] <= sd_d0_miso ;
        gpioa_out[2]      <= 1'b1;      // CK_H()
        spi_nextbit[4:0]  <= spi_nextbit[4:0]  - 5'h1; 
        gpioa_spista[7:0] <= 8'h3;
      end else begin
        gpioa_out[1]      <= gpioa_spiout[spi_nextbit]; // NEXT BIT
        gpioa_out[2]      <= 1'b0;        // CK_L()         
        gpioa_spista[7:0] <= 8'h0;        
        gpioa_spicnt[7:0] <= gpioa_spicnt[7:0] - 8'h1;
      end
    end   
  end

  // GPIOA SAMPLE EVERY CLOCK
  gpioa_pin[7:0] <= { 1'b0 , 1'b0 , sd_d1 , sd_d2 , sd_d3_cs , sd_clk , sd_cmd_mosi , sd_d0_miso };

  last_iowr <= iowr ; // TXD WR
  last_iord <= iord ; // TXD WR
end

// I2C
assign iord02h = (iord && adr02h);
assign iord03h = (iord && adr03h);
assign iord04h = (iord && adr04h);
assign iord06h = (iord && adr06h);
// SPI
assign iord10h = (iord && adr10h);
assign iord11h = (iord && adr11h);
assign iord12h = (iord && adr12h);
assign iord13h = (iord && adr13h);
assign iord14h = (iord && adr14h);
assign iord15h = (iord && adr15h);

assign iordcsrx = (iord && adrcsrx);
assign iordcsry = (iord && adrcsry);

assign iordtp   = (iord && adrtp);

assign APB2_PRDATA = 
        (iord10h ? {24'b0 , gpioa_out} :
        (iord11h ? {24'b0 , gpioa_dir} :
        (iord12h ? {24'b0 , gpioa_pin} :
        (iord13h ? gpioa_spiin :
        (iord14h ? {24'b0 , gpioa_spicnt} :
        (iord15h ? {24'b0 , gpioa_spista} :
        (iordcsrx ? cursorx :
        (iordcsry ? cursory :
        32'hFFFFFFFF))))))));//)))));
endmodule
