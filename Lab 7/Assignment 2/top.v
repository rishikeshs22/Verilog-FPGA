`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:16 05/11/2018 
// Design Name: 
// Module Name:    top 
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
module top(clk, rot_a, rot_b, sw, lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7
    );
	 
   	input clk, rot_a, rot_b;
	input [2:0] sw;

   	output lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	wire lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	
	wire rotation_event;
	wire output_done;
	wire [2:0] input0;
	wire [2:0] input1;
	wire [2:0] input2;
	wire [2:0] input3;
	wire input_ready;
	wire [1:0] min_index;
	wire output_ready;
	wire [0:127] first_line;
	wire [0:127] second_line;
	
	detect_event DE(clk, rot_a, rot_b, rotation_event);
	input_interface II(clk, rotation_event, sw, output_done, input0, input1, input2, input3, input_ready);
	compute EX(clk, input0, input1, input2, input3, input_ready, output_done, min_index, output_ready);
	lcd_interface LCD(output_ready, first_line, second_line, clk, lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7, output_done);

   	assign first_line = {"Input ",{5'b0,input0}+8'h30,", ",{5'b0,input1}+8'h30,", ",{5'b0,input2}+8'h30,", ",{5'b0,input3}+8'h30};
	assign second_line = {"Minimum index: ",{6'b0,min_index}+8'h30};
	
endmodule
