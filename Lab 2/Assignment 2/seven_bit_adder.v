`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:23 01/28/2018 
// Design Name: 
// Module Name:    seven_bit_adder 
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
module seven_bit_adder(pb1, pb2, pb3, pb4, Y, Z, Cout
    );

	input pb1, pb2, pb3, pb4;
	input [3:0] Y;
	
	output [6:0] Z;
	output Cout;
	wire [6:0] Z;
	wire Cout;
	
	reg [6:0] A;
	reg [6:0] B;
	wire [5:0] carry;
	
	always @ (posedge pb1) begin
		A[3:0] <= Y;
	end
	
	always @ (posedge pb2) begin
		A[6:4] <= Y[2:0];
	end
	
	always @ (posedge pb3) begin
		B[3:0] <= Y;
	end
	
	always @ (posedge pb4) begin
		B[6:4] <= Y[2:0];
	end
		
	full_adder FA0 (A[0], B[0], 1'b0, Z[0], carry[0]);
	full_adder FA1 (A[1], B[1], carry[0], Z[1], carry[1]);
	full_adder FA2 (A[2], B[2], carry[1], Z[2], carry[2]);
	full_adder FA3 (A[3], B[3], carry[2], Z[3], carry[3]);
	full_adder FA4 (A[4], B[4], carry[3], Z[4], carry[4]);
	full_adder FA5 (A[5], B[5], carry[4], Z[5], carry[5]);
	full_adder FA6 (A[6], B[6], carry[5], Z[6], Cout);
	
endmodule
