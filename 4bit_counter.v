/*================================================
Thomas Gorham

ECE 441 Spring 2017
Project 2 - Clock divider

Description: This module divides the input clk
signal frequency by 50000000.
For example, when inputting 50MHz, the resulting
frequency is 1Hz and period is 1 second.
================================================*/
`timescale 100 ns / 1 ns

module fourbit_ctr(clk, ar, ctr);
  input clk, ar;
  output reg [3:0] ctr;


  always @ (posedge clk or negedge ar)
    if(~ar) // If reset has negedge down to level 0,
      begin
        ctr = 4'd0;
      end
    else
      ctr = ctr + 1; // Inc ctr
endmodule
