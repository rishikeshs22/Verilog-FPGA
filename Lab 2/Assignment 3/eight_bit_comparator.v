`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:22 01/28/2018 
// Design Name: 
// Module Name:    eight_bit_comparator 
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
module eight_bit_comparator(pb1, pb2, pb3, pb4, Y, less, greater, equality
    );
	 
	 input pb1, pb2, pb3, pb4;
	 input [3:0] Y;
	 output less, greater, equality;
	 wire less, greater, equality;
	 
	 reg [7:0] A;
	 reg [7:0] B;
	 wire [6:0] less_array;
	 wire [6:0] greater_array;
	 wire [6:0] equality_array;
	 
	 one_bit_comparator COMP7 (1'b0, 1'b0, 1'b1, A[7], B[7],
						less_array[6], greater_array[6], equality_array[6]);
	 one_bit_comparator COMP6 (less_array[6], greater_array[6], equality_array[6],
						A[6], B[6], less_array[5], greater_array[5], equality_array[5]);
	 one_bit_comparator COMP5 (less_array[5], greater_array[5], equality_array[5],
						A[5], B[5], less_array[4], greater_array[4], equality_array[4]);
	 one_bit_comparator COMP4 (less_array[4], greater_array[4], equality_array[4],
						A[4], B[4], less_array[3], greater_array[3], equality_array[3]);
	 one_bit_comparator COMP3 (less_array[3], greater_array[3], equality_array[3],
						A[3], B[3], less_array[2], greater_array[2], equality_array[2]);
	 one_bit_comparator COMP2 (less_array[2], greater_array[2], equality_array[2],
						A[2], B[2], less_array[1], greater_array[1], equality_array[1]);
	 one_bit_comparator COMP1 (less_array[1], greater_array[1], equality_array[1],
						A[1], B[1], less_array[0], greater_array[0], equality_array[0]);
	 one_bit_comparator COMP0 (less_array[0], greater_array[0], equality_array[0],
						A[0], B[0], less, greater, equality);
	 
	 always @ (posedge pb1) begin
		A[3:0] <= Y;
	 end
	 
	 always @ (posedge pb2) begin
		A[7:4] <= Y;
	 end
	 
	 always @ (posedge pb3) begin
		B[3:0] <= Y;
	 end
	 
	 always @ (posedge pb4) begin
		B[7:4] <= Y;
	 end
	 
endmodule
