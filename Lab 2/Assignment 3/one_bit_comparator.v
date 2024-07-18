`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:59 01/28/2018 
// Design Name: 
// Module Name:    one_bit_comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Authored by Mainak Chaudhuri
//
//////////////////////////////////////////////////////////////////////////////////
module one_bit_comparator(prev_less, prev_greater, prev_eq, a, b,
                          this_less, this_greater, this_eq);

	input prev_less, prev_greater, prev_eq, a, b;
	output this_less, this_greater, this_eq;
	wire this_less, this_greater, this_eq;
	
	assign this_less = prev_less | (prev_eq & ~a & b);
	assign this_greater = prev_greater | (prev_eq & a & ~b);
	assign this_eq = prev_eq & ((~a & ~b) | (a & b));

endmodule
