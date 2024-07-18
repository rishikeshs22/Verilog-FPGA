`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:41:31 02/10/2018 
// Design Name: 
// Module Name:    rotary_shaft_top 
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
module rotary_shaft_top(clk, rot_a, rot_b,
							   led0, led1, led2, led3, led4, led5, led6, led7
    );

	input clk, rot_a, rot_b;
	output led0, led1, led2, led3, led4, led5, led6, led7;
	wire led0, led1, led2, led3, led4, led5, led6, led7;
	
	wire rotation_event, rotation_direction;
	
	detect_event DE (clk, rot_a, rot_b, rotation_event, rotation_direction);
	drive_led DLED (clk, rotation_event, rotation_direction,
						 led0, led1, led2, led3, led4, led5, led6, led7);

endmodule
