`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:14:06 02/10/2018 
// Design Name: 
// Module Name:    worm_grid_top 
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
module worm_grid_top(clk, rot_a, rot_b, Y, xc, yc
    );
	 
	 input clk, rot_a, rot_b;
	 input [3:0] Y;
	 
	 output [3:0] xc;
	 output [3:0] yc;
	 wire [3:0] xc;
	 wire [3:0] yc;
	 
	 wire rotation_event;
	 
	 detect_event DE (clk, rot_a, rot_b, rotation_event);
	 drive_worm DW (clk, rotation_event, Y, xc, yc);

endmodule
