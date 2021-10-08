module pll_50mhz
(
    input clkin,
    output clkout_sdram,
    output clkout_system,
    output locked
);

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
  .CLKOS_DIV(4'd4),
  .CLKOS_ENABLE("ENABLED"),
  .FEEDBK_PATH("INT_OS3")
) EHXPLLL (
  .CLKI(clkin),
  .RST(1'b0),
  .CLKOP(clkout_system),
  .CLKOS(clkout_sdram),
  .LOCK(locked)
);

endmodule // pll_50mhz