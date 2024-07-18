`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:42:02 05/11/2018 
// Design Name: 
// Module Name:    compute 
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
module compute(clk, input0, input1, input2, input3, input_ready, output_done, min_index, output_ready
    );

   	input clk;
	input [2:0] input0;
	input [2:0] input1;
	input [2:0] input2;
	input [2:0] input3;
	input input_ready;
	input output_done;
	
	output [1:0] min_index;
	output output_ready;
	
	reg [1:0] min_index;
	reg output_ready;
	
	wire [2:0] compare1;
	wire [2:0] compare2;
	wire [1:0] index1;
	wire [1:0] index2;
	wire [1:0] index3;
	
	assign compare1 = (input0 <= input1) ? input0 : input1;
	assign compare2 = (input2 <= input3) ? input2 : input3;
	assign index1 = (input0 <= input1) ? 2'b00 : 2'b01;
	assign index2 = (input2 <= input3) ? 2'b10 : 2'b11;
	assign index3 = (compare1 <= compare2) ? index1 : index2;
	
	initial begin
		output_ready = 0;
	end
	
	always @ (posedge clk) begin
	   	if (input_ready == 1) begin
		   	min_index <= index3;
			output_ready <= 1;
		end
		if (output_done == 1) begin
		   	output_ready <= 0;
		end
	end

endmodule
