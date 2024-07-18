`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:26 05/11/2018 
// Design Name: 
// Module Name:    input_interface 
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
module input_interface(clk, rotation_event, sw, Y
    );

   input clk, rotation_event;
	input [1:0] sw;
	
	output [1:0] Y;
	
	reg [1:0] Y;
	
	reg prev_rotation_event;
	
	initial begin
	   	prev_rotation_event = 1;
		Y = 0;
	end
	
	always @ (posedge clk) begin
	   	if ((prev_rotation_event == 0) && (rotation_event == 1)) begin
			Y <= sw;
		end
		prev_rotation_event <= rotation_event;
	end

endmodule
