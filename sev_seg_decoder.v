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

module sevseg_decoder(val, a, b, c, d, e, f, g);
  input [3:0] val;
  output reg a, b, c, d, e, f, g;

  parameter led_on = 1'b0;
  parameter led_off = 1'b1;

  always @(val)
  	case (val)
  		4'h0: begin
  			a = led_on;
  			b = led_on;
  			c = led_on;
  			d = led_on;
  			e = led_on;
  			f = led_on;
  			g = led_off;
  		end
  		4'h1: begin
  			a = led_off;
  			b = led_on;
  			c = led_on;
  			d = led_off;
  			e = led_off;
  			f = led_off;
  			g = led_off;
  		end
  		4'h2: begin
  			a = led_on;
  			b = led_on;
  			c = led_off;
  			d = led_on;
  			e = led_on;
  			f = led_off;
  			g = led_on;
  		end
  		4'h3: begin
  			a = led_on;
  			b = led_on;
  			c = led_on;
  			d = led_on;
  			e = led_off;
  			f = led_off;
  			g = led_on;
  		end
  		4'h4: begin
  			a = led_off;
  			b = led_on;
  			c = led_on;
  			d = led_off;
  			e = led_off;
  			f = led_on;
  			g = led_on;
  		end
  		4'h5: begin
  			a = led_on;
  			b = led_off;
  			c = led_on;
  			d = led_on;
  			e = led_off;
  			f = led_on;
  			g = led_on;
  		end
  		4'h6: begin
  			a = led_on;
  			b = led_off;
  			c = led_on;
  			d = led_on;
  			e = led_on;
  			f = led_on;
  			g = led_on;
  		end
  		4'h7: begin
  			a = led_on;
  			b = led_on;
  			c = led_on;
  			d = led_off;
  			e = led_off;
  			f = led_off;
  			g = led_off;
  		end
  		4'h8: begin
  			a = led_on;
  			b = led_on;
  			c = led_on;
  			d = led_on;
  			e = led_on;
  			f = led_on;
  			g = led_on;
  		end
  		4'h9: begin
  			a = led_on;
  			b = led_on;
  			c = led_on;
  			d = led_off;
  			e = led_off;
  			f = led_on;
  			g = led_on;
  		end
  		4'hA: begin
  			a = led_on;
  			b = led_on;
  			c = led_on;
  			d = led_off;
  			e = led_on;
  			f = led_on;
  			g = led_on;
  		end
  		4'hB: begin
  			a = led_off;
  			b = led_off;
  			c = led_on;
  			d = led_on;
  			e = led_on;
  			f = led_on;
  			g = led_on;
  		end
  		4'hC: begin
  			a = led_on;
  			b = led_off;
  			c = led_off;
  			d = led_on;
  			e = led_on;
  			f = led_on;
  			g = led_off;
  		end
  		4'hD: begin
  			a = led_off;
  			b = led_on;
  			c = led_on;
  			d = led_on;
  			e = led_on;
  			f = led_off;
  			g = led_on;
  		end
  		4'hE: begin
  			a = led_on;
  			b = led_off;
  			c = led_off;
  			d = led_on;
  			e = led_on;
  			f = led_on;
  			g = led_on;
  		end
  		default: begin
  			a = led_on;
  			b = led_off;
  			c = led_off;
  			d = led_off;
  			e = led_on;
  			f = led_on;
  			g = led_on;
  		end
  	endcase
endmodule
