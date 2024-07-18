`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:45:28 01/28/2018
// Design Name:   seven_bit_adder
// Module Name:   D:/cs220labs/lab2_2/seven_bit_adder/seven_bit_adder_top.v
// Project Name:  seven_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Authored by Mainak Chaudhuri
// 
////////////////////////////////////////////////////////////////////////////////

module seven_bit_adder_top;

	// Inputs
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg [3:0] Y;

	// Outputs
	wire [6:0] Z;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	seven_bit_adder uut (
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.Y(Y), 
		.Z(Z), 
		.Cout(Cout)
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
		Y = 7;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 1;
		pb4 = 0;
		Y = 7;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 1;
		Y = 7;
		#5;
		$display("%d: output: %d, carry: %b", $time, Z, Cout);
		#5;
		$finish;
	end
      
endmodule

