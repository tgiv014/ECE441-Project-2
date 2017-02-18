/*================================================
Thomas Gorham

ECE 441 Spring 2017
Project 2 - Clock divider

Description: This module tests the clock divider
implemented in clock_divider.v
================================================*/
`timescale 100 ns / 1 ns

module sevseg_decoder_tb;
  reg [3:0] val_test;
  wire a_test, b_test, c_test, d_test, e_test, f_test, g_test;

  sevseg_decoder decoder (.val(val_test), .a(a_test), .b(b_test), .c(c_test), .d(d_test), .e(e_test), .f(f_test), .g(g_test));
  initial
    begin
      val_test = 4'd0;
    end
    
  always
    begin
      #1 val_test = val_test + 1;
    end

endmodule


