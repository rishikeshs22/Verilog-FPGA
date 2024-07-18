`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:58 01/28/2018 
// Design Name: 
// Module Name:    five_bit_adder 
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
module five_bit_adder(a, b, cin, sum, cout
    );

	input [4:0] a;
	input [4:0] b;
	input cin;
	
	output [4:0] sum;
	output cout;
	wire [4:0] sum;
	wire cout;
	
	wire carry;
	
	four_bit_adder FA4 (a[3:0], b[3:0], cin, sum[3:0], carry);
	full_adder FA5 (a[4], b[4], carry, sum[4], cout);

endmodule
