/*================================================
Thomas Gorham

ECE 441 Spring 2017
Project 2 - Clock divider

Description: This module tests the clock divider
implemented in clock_divider.v
================================================*/
`timescale 1 ns / 1 ns

module clock_divider_tb;
  reg input_clk;
  reg ar_test;
  wire q_test;

  // Instantiate clock divider with input clock and reset as defined below
  clock_divider clkdiv ( .clk(input_clk), .ar(ar_test), .q(q_test));

  initial
    begin
      input_clk = 1'b0;

      ar_test = 1'b1; // Initially reset line is high
      #1 ar_test = 1'b0; // Wait one time unit and make a negedge
      #20 ar_test = 1'b1; // Bring it back up
    end
    
  always
    begin
      #20 input_clk = ~input_clk; // Invert clk
    end

endmodule


