`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:08 01/28/2018
// Design Name:   five_input_adder
// Module Name:   D:/cs220labs/lab2_3/five_input_adder/five_input_adder_top.v
// Project Name:  five_input_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_input_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Authored by Mainak Chaudhuri
// 
////////////////////////////////////////////////////////////////////////////////

module five_input_adder_top;

	// Inputs
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg pb5;
	reg [3:0] Y;

	// Outputs
	wire [5:0] Z;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	five_input_adder uut (
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.pb5(pb5), 
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
		pb5 = 0;
		Y = 0;
		#1;
		pb1 = 1;
		pb2 = 0;
		pb3 = 0;
		pb4 = 0;
		pb5 = 0;
		Y = 15;
		#1;
		pb1 = 0;
		pb2 = 1;
		pb3 = 0;
		pb4 = 0;
		pb5 = 0;
		Y = 15;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 1;
		pb4 = 0;
		pb5 = 0;
		Y = 15;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 1;
		pb5 = 0;
		Y = 15;
		#1;
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 0;
		pb5 = 1;
		Y = 15;
		#5
		$display("%d: Z: %d, Cout: %b", $time, Z, Cout);
		$finish;
	end
      
endmodule

