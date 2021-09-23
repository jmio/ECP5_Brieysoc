// ROM
reg [31:0] mem[0:9085];
reg [31:0] memdat;
always @(posedge sys_clk) begin
	memdat <= mem[main_basesoc_basesoc_adr];
end

assign main_basesoc_basesoc_dat_r = memdat;
initial begin
	$readmemh("mem.init", mem);
end

// RAM
reg [31:0] mem_1[0:2047];
reg [10:0] memadr;
always @(posedge sys_clk) begin
	if (main_basesoc_ram_we[0])
		mem_1[main_basesoc_ram_adr][7:0] <= main_basesoc_ram_dat_w[7:0];
	if (main_basesoc_ram_we[1])
		mem_1[main_basesoc_ram_adr][15:8] <= main_basesoc_ram_dat_w[15:8];
	if (main_basesoc_ram_we[2])
		mem_1[main_basesoc_ram_adr][23:16] <= main_basesoc_ram_dat_w[23:16];
	if (main_basesoc_ram_we[3])
		mem_1[main_basesoc_ram_adr][31:24] <= main_basesoc_ram_dat_w[31:24];
	memadr <= main_basesoc_ram_adr;
end
assign main_basesoc_ram_dat_r = mem_1[memadr];
initial begin
	$readmemh("mem_1.init", mem_1);
end

// FONT ROM
reg [7:0] font_mem[0:4095];
reg [11:0] memadr_9;
always @(posedge hdmi_clk) begin
	if (main_vt_font_rdport_re)
		memadr_9 <= main_vt_font_rdport_adr;
end
assign main_vt_font_rdport_dat_r = font_mem[memadr_9];

initial begin
	$readmemh("font_mem.init", font_mem);
end

// VRAM
reg [15:0] term_mem[0:4735];
reg [12:0] memadr_10;
reg [12:0] memadr_11;
always @(posedge hdmi_clk) begin
	if (main_vt_term_wrport_we)
		term_mem[main_vt_term_wrport_adr] <= main_vt_term_wrport_dat_w;
	memadr_10 <= main_vt_term_wrport_adr;
end

always @(posedge hdmi_clk) begin
	if (main_vt_term_rdport_re)
		memadr_11 <= main_vt_term_rdport_adr;
end

assign main_vt_term_wrport_dat_r = term_mem[memadr_10];
assign main_vt_term_rdport_dat_r = term_mem[memadr_11];

initial begin
	$readmemh("term_mem.init", term_mem);
end


VexRiscv VexRiscv(
	.clk(sys_clk),
	.dBusWishbone_ACK(main_basesoc_dbus_ack),
	.dBusWishbone_DAT_MISO(main_basesoc_dbus_dat_r),
	.dBusWishbone_ERR(main_basesoc_dbus_err),
	.externalInterruptArray(main_basesoc_interrupt),
	.externalResetVector(main_basesoc_vexriscv),
	.iBusWishbone_ACK(main_basesoc_ibus_ack),
	.iBusWishbone_DAT_MISO(main_basesoc_ibus_dat_r),
	.iBusWishbone_ERR(main_basesoc_ibus_err),
	.reset((sys_rst | main_basesoc_reset)),
	.softwareInterrupt(1'd0),
	.timerInterrupt(1'd0),
	.dBusWishbone_ADR(main_basesoc_dbus_adr),
	.dBusWishbone_BTE(main_basesoc_dbus_bte),
	.dBusWishbone_CTI(main_basesoc_dbus_cti),
	.dBusWishbone_CYC(main_basesoc_dbus_cyc),
	.dBusWishbone_DAT_MOSI(main_basesoc_dbus_dat_w),
	.dBusWishbone_SEL(main_basesoc_dbus_sel),
	.dBusWishbone_STB(main_basesoc_dbus_stb),
	.dBusWishbone_WE(main_basesoc_dbus_we),
	.iBusWishbone_ADR(main_basesoc_ibus_adr),
	.iBusWishbone_BTE(main_basesoc_ibus_bte),
	.iBusWishbone_CTI(main_basesoc_ibus_cti),
	.iBusWishbone_CYC(main_basesoc_ibus_cyc),
	.iBusWishbone_DAT_MOSI(main_basesoc_ibus_dat_w),
	.iBusWishbone_SEL(main_basesoc_ibus_sel),
	.iBusWishbone_STB(main_basesoc_ibus_stb),
	.iBusWishbone_WE(main_basesoc_ibus_we)
);

(* FREQUENCY_PIN_CLKI = "25.0", 
   FREQUENCY_PIN_CLKOP = "60.0", 
   FREQUENCY_PIN_CLKOS = "60.0", 
   ICP_CURRENT = "6", 
   LPF_RESISTOR = "16", 
   MFG_ENABLE_FILTEROPAMP = "1", 
   MFG_GMCREF_SEL = "2" *) 
EHXPLLL #(
	.CLKFB_DIV(5'd24),
	.CLKI_DIV(1'd1),
	.CLKOP_CPHASE(4'd9),
	.CLKOP_DIV(4'd10),
	.CLKOP_ENABLE("ENABLED"),
	.CLKOP_FPHASE(1'd0),
	.CLKOS2_CPHASE(1'd0),
	.CLKOS2_DIV(1'd1),
	.CLKOS2_ENABLE("ENABLED"),
	.CLKOS2_FPHASE(1'd0),
	.CLKOS_CPHASE(4'd14),
	.CLKOS_DIV(4'd10),
	.CLKOS_ENABLE("ENABLED"),
	.CLKOS_FPHASE(1'd0),
	.FEEDBK_PATH("INT_OS2")
) EHXPLLL (
	.CLKI(main_ecp5pll0_clkin),
	.RST(main_pll_reset),
	.STDBY(main_pll_stdby),
	.CLKOP(main_ecp5pll0_clkout0),
	.CLKOS(main_ecp5pll0_clkout1),
	.CLKOS2(builder_ecp5pll0_ecp5pll),
	.LOCK(builder_ecp5pll0_locked)
);

(* FREQUENCY_PIN_CLKI = "25.0", 
   FREQUENCY_PIN_CLKOP = "40.0", 
   FREQUENCY_PIN_CLKOS = "200.0", 
   ICP_CURRENT = "6", 
   LPF_RESISTOR = "16", 
   MFG_ENABLE_FILTEROPAMP = "1", 
   MFG_GMCREF_SEL = "2" *) 
EHXPLLL #(
	.CLKFB_DIV(5'd16),
	.CLKI_DIV(1'd1),
	.CLKOP_CPHASE(4'd9),
	.CLKOP_DIV(4'd10),
	.CLKOP_ENABLE("ENABLED"),
	.CLKOP_FPHASE(1'd0),
	.CLKOS2_CPHASE(1'd0),
	.CLKOS2_DIV(1'd1),
	.CLKOS2_ENABLE("ENABLED"),
	.CLKOS2_FPHASE(1'd0),
	.CLKOS_CPHASE(1'd1),
	.CLKOS_DIV(2'd2),
	.CLKOS_ENABLE("ENABLED"),
	.CLKOS_FPHASE(1'd0),
	.FEEDBK_PATH("INT_OS2")
) EHXPLLL_1 (
	.CLKI(main_ecp5pll1_clkin),
	.RST(main_video_pll_reset),
	.STDBY(main_video_pll_stdby),
	.CLKOP(main_ecp5pll1_clkout0),
	.CLKOS(main_ecp5pll1_clkout1),
	.CLKOS2(builder_ecp5pll1_ecp5pll),
	.LOCK(builder_ecp5pll1_locked)
);

assign io_sdram_DQ_read = sdram_dq;
assign sdram_dq[0] = io_sdram_DQ_writeEnable[0] ? io_sdram_DQ_write[0] : 1'bz;
assign sdram_dq[1] = io_sdram_DQ_writeEnable[1] ? io_sdram_DQ_write[1] : 1'bz;
assign sdram_dq[2] = io_sdram_DQ_writeEnable[2] ? io_sdram_DQ_write[2] : 1'bz;
assign sdram_dq[3] = io_sdram_DQ_writeEnable[3] ? io_sdram_DQ_write[3] : 1'bz;
assign sdram_dq[4] = io_sdram_DQ_writeEnable[4] ? io_sdram_DQ_write[4] : 1'bz;
assign sdram_dq[5] = io_sdram_DQ_writeEnable[5] ? io_sdram_DQ_write[5] : 1'bz;
assign sdram_dq[6] = io_sdram_DQ_writeEnable[6] ? io_sdram_DQ_write[6] : 1'bz;
assign sdram_dq[7] = io_sdram_DQ_writeEnable[7] ? io_sdram_DQ_write[7] : 1'bz;
assign sdram_dq[8] = io_sdram_DQ_writeEnable[8] ? io_sdram_DQ_write[8] : 1'bz;
assign sdram_dq[9] = io_sdram_DQ_writeEnable[9] ? io_sdram_DQ_write[9] : 1'bz;
assign sdram_dq[10] = io_sdram_DQ_writeEnable[10] ? io_sdram_DQ_write[10] : 1'bz;
assign sdram_dq[11] = io_sdram_DQ_writeEnable[11] ? io_sdram_DQ_write[11] : 1'bz;
assign sdram_dq[12] = io_sdram_DQ_writeEnable[12] ? io_sdram_DQ_write[12] : 1'bz;
assign sdram_dq[13] = io_sdram_DQ_writeEnable[13] ? io_sdram_DQ_write[13] : 1'bz;
assign sdram_dq[14] = io_sdram_DQ_writeEnable[14] ? io_sdram_DQ_write[14] : 1'bz;
assign sdram_dq[15] = io_sdram_DQ_writeEnable[15] ? io_sdram_DQ_write[15] : 1'bz;


TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_0 
(.B(sdram_dq[0]),.I(io_sdram_DQ_write[0]),.T((io_sdram_DQ_writeEnable[0])),.O(io_sdram_DQ_read[0]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_1 
(.B(sdram_dq[1]),.I(io_sdram_DQ_write[1]),.T((io_sdram_DQ_writeEnable[1])),.O(io_sdram_DQ_read[1]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_2 
(.B(sdram_dq[2]),.I(io_sdram_DQ_write[2]),.T((io_sdram_DQ_writeEnable[2])),.O(io_sdram_DQ_read[2]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_3 
(.B(sdram_dq[3]),.I(io_sdram_DQ_write[3]),.T((io_sdram_DQ_writeEnable[3])),.O(io_sdram_DQ_read[3]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_4 
(.B(sdram_dq[4]),.I(io_sdram_DQ_write[4]),.T((io_sdram_DQ_writeEnable[4])),.O(io_sdram_DQ_read[4]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_5 
(.B(sdram_dq[5]),.I(io_sdram_DQ_write[5]),.T((io_sdram_DQ_writeEnable[5])),.O(io_sdram_DQ_read[5]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_6 
(.B(sdram_dq[6]),.I(io_sdram_DQ_write[6]),.T((io_sdram_DQ_writeEnable[6])),.O(io_sdram_DQ_read[6]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_7 
(.B(sdram_dq[7]),.I(io_sdram_DQ_write[7]),.T((io_sdram_DQ_writeEnable[7])),.O(io_sdram_DQ_read[7]));

TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_8 
(.B(sdram_dq[8]),.I(io_sdram_DQ_write[8]),  .T((io_sdram_DQ_writeEnable[8])),.O(io_sdram_DQ_read[8]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_9 
(.B(sdram_dq[9]),.I(io_sdram_DQ_write[9]),  .T((io_sdram_DQ_writeEnable[9])),.O(io_sdram_DQ_read[9]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_10 
(.B(sdram_dq[10]),.I(io_sdram_DQ_write[10]),.T((io_sdram_DQ_writeEnable[10])),.O(io_sdram_DQ_read[10]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_11 
(.B(sdram_dq[11]),.I(io_sdram_DQ_write[11]),.T((io_sdram_DQ_writeEnable[11])),.O(io_sdram_DQ_read[11]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_12 
(.B(sdram_dq[12]),.I(io_sdram_DQ_write[12]),.T((io_sdram_DQ_writeEnable[12])),.O(io_sdram_DQ_read[12]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_13 
(.B(sdram_dq[13]),.I(io_sdram_DQ_write[13]),.T((io_sdram_DQ_writeEnable[13])),.O(io_sdram_DQ_read[13]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_14 
(.B(sdram_dq[14]),.I(io_sdram_DQ_write[14]),.T((io_sdram_DQ_writeEnable[14])),.O(io_sdram_DQ_read[14]));
TRELLIS_IO #(.DIR("BIDIR")) TRELLIS_IO_15 
(.B(sdram_dq[15]),.I(io_sdram_DQ_write[15]),.T((io_sdram_DQ_writeEnable[15])),.O(io_sdram_DQ_read[15]));




TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_2 (
	.B(sdram_dq[0]),
	.I(builder_inferedsdrtristate2__o),
	.T((~builder_inferedsdrtristate2_oe)),
	.O(builder_inferedsdrtristate2__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_3 (
	.B(sdram_dq[1]),
	.I(builder_inferedsdrtristate3__o),
	.T((~builder_inferedsdrtristate3_oe)),
	.O(builder_inferedsdrtristate3__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_4 (
	.B(sdram_dq[2]),
	.I(builder_inferedsdrtristate4__o),
	.T((~builder_inferedsdrtristate4_oe)),
	.O(builder_inferedsdrtristate4__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_5 (
	.B(sdram_dq[3]),
	.I(builder_inferedsdrtristate5__o),
	.T((~builder_inferedsdrtristate5_oe)),
	.O(builder_inferedsdrtristate5__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_6 (
	.B(sdram_dq[4]),
	.I(builder_inferedsdrtristate6__o),
	.T((~builder_inferedsdrtristate6_oe)),
	.O(builder_inferedsdrtristate6__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_7 (
	.B(sdram_dq[5]),
	.I(builder_inferedsdrtristate7__o),
	.T((~builder_inferedsdrtristate7_oe)),
	.O(builder_inferedsdrtristate7__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_8 (
	.B(sdram_dq[6]),
	.I(builder_inferedsdrtristate8__o),
	.T((~builder_inferedsdrtristate8_oe)),
	.O(builder_inferedsdrtristate8__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_9 (
	.B(sdram_dq[7]),
	.I(builder_inferedsdrtristate9__o),
	.T((~builder_inferedsdrtristate9_oe)),
	.O(builder_inferedsdrtristate9__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_10 (
	.B(sdram_dq[8]),
	.I(builder_inferedsdrtristate10__o),
	.T((~builder_inferedsdrtristate10_oe)),
	.O(builder_inferedsdrtristate10__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_11 (
	.B(sdram_dq[9]),
	.I(builder_inferedsdrtristate11__o),
	.T((~builder_inferedsdrtristate11_oe)),
	.O(builder_inferedsdrtristate11__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_12 (
	.B(sdram_dq[10]),
	.I(builder_inferedsdrtristate12__o),
	.T((~builder_inferedsdrtristate12_oe)),
	.O(builder_inferedsdrtristate12__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_13 (
	.B(sdram_dq[11]),
	.I(builder_inferedsdrtristate13__o),
	.T((~builder_inferedsdrtristate13_oe)),
	.O(builder_inferedsdrtristate13__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_14 (
	.B(sdram_dq[12]),
	.I(builder_inferedsdrtristate14__o),
	.T((~builder_inferedsdrtristate14_oe)),
	.O(builder_inferedsdrtristate14__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_15 (
	.B(sdram_dq[13]),
	.I(builder_inferedsdrtristate15__o),
	.T((~builder_inferedsdrtristate15_oe)),
	.O(builder_inferedsdrtristate15__i)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_16 (
	.B(sdram_dq[14]),
	.I(builder_inferedsdrtristate16__o),
	.T((~builder_inferedsdrtristate16_oe)),
	.O(builder_inferedsdrtristate16__i)
);


TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_17 (
	.B(sdram_dq[15]),
	.I(builder_inferedsdrtristate17__o),
	.T((~builder_inferedsdrtristate17_oe)),
	.O(builder_inferedsdrtristate17__i)
);
