module pll_50mhz
(
    input clkin,
    output clkout_sdram,
    output clkout_system,
    output clkout_hdmi,
    output clkout_vga,
    output locked
);

EHXPLLL #(
  .CLKFB_DIV(4'd5),
  .CLKI_DIV(1'd1),

  .CLKOP_CPHASE(4'd9), // 7
  .CLKOP_FPHASE(1'd0),
  .CLKOP_DIV(4'd10), // 500MHz / 10 = 50MHz
  .CLKOP_ENABLE("ENABLED"),

  .CLKOS3_CPHASE(5'd23),
  .CLKOS3_DIV(4'd4), // (CLKOS3_DIV)4*(CLKFB_DIV)5 = 20x   , 25M x 20 = 500MHz PLL / 4 = 125MHz
  .CLKOS3_ENABLE("ENABLED"),
  .CLKOS3_FPHASE(1'd0),

  .CLKOS2_CPHASE(4'd9),
  .CLKOS2_FPHASE(1'd0),
  .CLKOS2_DIV(5'd20), // 500MHz PLL / 20 = 25MHz
  .CLKOS2_ENABLE("ENABLED"),

  .CLKOS_CPHASE(4'd7), // 9
  .CLKOS_FPHASE(1'd0),
  .CLKOS_DIV(4'd5),   // 500MHz / 5 = 100MHz
  .CLKOS_ENABLE("ENABLED"),

  .FEEDBK_PATH("INT_OS3")
) EHXPLLL (
  .CLKI(clkin),
  .RST(1'b0),
  .CLKOP(clkout_system), //  50MHz
  .CLKOS(clkout_sdram),  // 100MHz
  .CLKOS2(clkout_vga),   //  25MHz
  .CLKOS3(clkout_hdmi),  // 250MHz
  .LOCK(locked)
);

endmodule // pll_50mhz