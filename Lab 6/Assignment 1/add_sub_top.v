`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:32:56 02/10/2018 
// Design Name: 
// Module Name:    add_sub_top 
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
module add_sub_top(clk, rot_a, rot_b, rot_center, Y, sum, overflow
    );

	input clk, rot_a, rot_b, rot_center;
	input [3:0] Y;
	output [6:0] sum;
	output overflow;
	wire [6:0] sum;
	wire overflow;
	
	wire rotation_event;
	
	detect_event DE (clk, rot_a, rot_b, rotation_event);
	drive_add_sub DAS (clk, rotation_event, Y, rot_center, sum, overflow);

endmodule
