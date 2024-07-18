`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:22 01/28/2018 
// Design Name: 
// Module Name:    six_bit_adder 
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
module six_bit_adder(a, b, cin, sum, cout
    );

	input [5:0] a;
	input [5:0] b;
	input cin;
	
	output [5:0] sum;
	output cout;
	wire [5:0] sum;
	wire cout;
	
	wire carry;
	
	five_bit_adder FA6 (a[4:0], b[4:0], cin, sum[4:0], carry);
	full_adder FA7 (a[5], b[5], carry, sum[5], cout);

endmodule
