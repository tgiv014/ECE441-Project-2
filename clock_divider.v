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

module clock_divider(clk, ar, q);
  input clk, ar;
  output reg q;
  
  reg  [25:0]  ctr; // Need a 26 bit counter reg


  always @ (posedge clk or negedge ar)
    if(~ar) // If reset has negedge down to level 0,
      begin
        ctr = 26'd0; // Put ctr and output in known state
        q = 1'd0;
      end
    else
      if(ctr>=26'd25000000) // If the counter hits 25M
        begin
          q = ~q; // Flip output
          ctr = 26'd0; // Reset ctr
        end
    else
      ctr = ctr + 1; // Inc ctr
endmodule
