module pll_50mhz
(
    input clkin,
    output clkout_sdram,
    output clkout_system,
    output clkout_hdmi,
    output locked
);

EHXPLLL #(
  .CLKFB_DIV(4'd10),
  .CLKI_DIV(1'd1),
  .CLKOP_CPHASE(4'd9), // 7
  .CLKOP_FPHASE(1'd0),
  .CLKOP_DIV(4'd10),
  .CLKOP_ENABLE("ENABLED"),
  .CLKOS3_CPHASE(5'd23),
  .CLKOS3_DIV(4'd2), // (CLKOS3_DIV)2*(CLKFB_DIV)10 = 20x   , 25M x 20 = 500MHz PLL
  .CLKOS3_ENABLE("ENABLED"),
  .CLKOS3_FPHASE(1'd0),
  .CLKOS_CPHASE(4'd7), // 9
  .CLKOS_FPHASE(1'd0),
  .CLKOS_DIV(4'd5),
  .CLKOS_ENABLE("ENABLED"),
  .FEEDBK_PATH("INT_OS3")
) EHXPLLL (
  .CLKI(clkin),
  .RST(1'b0),
  .CLKOP(clkout_system), //  50MHz
  .CLKOS(clkout_sdram),  // 100MHz
  .CLKOS3(clkout_hdmi),  // 250MHz
  .LOCK(locked)
);

endmodule // pll_50mhz