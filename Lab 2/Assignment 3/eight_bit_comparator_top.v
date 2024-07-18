`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:38:33 01/28/2018
// Design Name:   eight_bit_comparator
// Module Name:   D:/cs220labs/lab2_3/eight_bit_comparator/eight_bit_comparator_top.v
// Project Name:  eight_bit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Authored by Mainak Chaudhuri
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_comparator_top;

	// Inputs
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg [3:0] Y;

	// Outputs
	wire less;
	wire greater;
	wire equality;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comparator uut (
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.Y(Y), 
		.less(less), 
		.greater(greater), 
		.equality(equality)
	);

	initial begin
		// Initialize Inputs
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 0;
		Y = 0;
		#1;
		pb1 = 1;
		pb2 = 0;
		pb3 = 0;
		pb4 = 0;
		Y = 15;
		#1;
		pb1 = 0;
		pb2 = 1;
		pb3 = 0;
		pb4 = 0;
		Y = 14;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 1;
		pb4 = 0;
		Y = 15;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 1;
		Y = 14;
		#5
		$display("%d: less: %b, greater: %b, equal: %b\n", $time, less, greater, equality);
		$finish;
	end
      
endmodule

