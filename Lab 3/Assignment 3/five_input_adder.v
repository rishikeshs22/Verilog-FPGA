`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:43 01/28/2018 
// Design Name: 
// Module Name:    five_input_adder 
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
module five_input_adder(pb1, pb2, pb3, pb4, pb5, Y, Z, Cout
    );

	input pb1, pb2, pb3, pb4, pb5;
	input [3:0] Y;
	
	output [5:0] Z;
	output Cout;
	wire [5:0] Z;
	wire Cout;
	
	reg [3:0] A;
	reg [3:0] B;
	reg [3:0] C;
	reg [3:0] D;
	reg [3:0] E;
	
	wire [3:0] sum1;
	wire [3:0] sum2;
	wire [4:0] sum3;
	wire carry1, carry2, carry3;
	
	always @ (posedge pb1) begin
		A <= Y;
	end
	
	always @ (posedge pb2) begin
		B <= Y;
	end
	
	always @ (posedge pb3) begin
		C <= Y;
	end
	
	always @ (posedge pb4) begin
		D <= Y;
	end
	
	always @ (posedge pb5) begin
		E <= Y;
	end
	
	four_bit_adder ADD1 (A, B, 1'b0, sum1, carry1);
	four_bit_adder ADD2 (C, D, 1'b0, sum2, carry2);
	five_bit_adder ADD3 ({carry1,sum1}, {carry2,sum2}, 1'b0, sum3, carry3);
	six_bit_adder ADD4 ({carry3,sum3}, {2'b0,E}, 1'b0, Z, Cout);

endmodule
