`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:09 05/11/2018 
// Design Name: 
// Module Name:    fsm_top 
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
module fsm_top(clk, rot_a, rot_b, sw, led3, led2, led1, led0
    );

   	input clk, rot_a, rot_b;
	input [1:0] sw;
	
	output led3, led2, led1, led0;
	
	wire led3, led2, led1, led0;
	
	wire rotation_event;
	wire [1:0] Y;
	wire [3:0] current_state;
	
	detect_event DE(clk, rot_a, rot_b, rotation_event);
	input_interface II(clk, rotation_event, sw, Y);
	fsm PROCESSOR(clk, Y, current_state);
	
	assign led3 = current_state[3];
	assign led2 = current_state[2];
	assign led1 = current_state[1];
	assign led0 = current_state[0];

endmodule
