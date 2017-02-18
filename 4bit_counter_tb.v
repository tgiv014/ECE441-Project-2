/*================================================
Thomas Gorham

ECE 441 Spring 2017
Project 2 - Clock divider

Description: This module tests the clock divider
implemented in clock_divider.v
================================================*/
`timescale 100 ns / 1 ns

module fourbit_ctr_tb;
  reg input_clk;
  reg ar_test;
  wire [3:0] ctr_test;

  fourbit_ctr ctr ( .clk(input_clk), .ar(ar_test), .ctr(ctr_test));
  initial
    begin
      input_clk = 1'b0;

      ar_test = 1'b1; // Initially reset line is high
      #1 ar_test = 1'b0; // Wait one time unit and make a negedge
      #1 ar_test = 1'b1; // Bring it back up
    end
    
  always
    begin
      #1 input_clk = ~input_clk; // Invert clk
    end

endmodule


