// Clock generation module
`timescale 1ns/1ps

module clk_rst_gen (
    output reg          oclk,
    output reg          orst
);

  initial begin
      oclk = 1'h1;
      forever oclk = #2 ~oclk;
  end

  initial begin
      orst = 1'b1;
      repeat (10) @(posedge oclk);
      orst = 1'b0;
  end

endmodule
