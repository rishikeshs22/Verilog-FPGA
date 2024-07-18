`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:24 05/11/2018 
// Design Name: 
// Module Name:    fsm 
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
`define DELAY 100_000_000

module fsm(clk, Y, current_state
    );

   	input clk;
	input [1:0] Y;
	
	output [3:0] current_state;
	
	reg [3:0] current_state;
	
	reg [2:0] microcodeROM [0:12];
	reg [3:0] dispatchROM1 [0:3];
	reg [3:0] dispatchROM2 [0:3];
	reg [26:0] counter;
	
	initial begin
	   	counter = `DELAY;
		
		microcodeROM[0] = 0;
		microcodeROM[1] = 0;
		microcodeROM[2] = 0;
		microcodeROM[3] = 1;
		microcodeROM[4] = 3;
		microcodeROM[5] = 3;
		microcodeROM[6] = 0;
		microcodeROM[7] = 0;
		microcodeROM[8] = 0;
		microcodeROM[9] = 0;
		microcodeROM[10] = 2;
		microcodeROM[11] = 4;
		microcodeROM[12] = 4;
		
		dispatchROM1[0] = 4;
		dispatchROM1[1] = 5;
		dispatchROM1[2] = 6;
		dispatchROM1[3] = 6;
		
		dispatchROM2[0] = 11;
		dispatchROM2[1] = 12;
		dispatchROM2[2] = 12;
		dispatchROM2[3] = 12;
		
		current_state = 0;
	end
	
	always @ (posedge clk) begin
	   	if (counter == 0) begin
		   	counter <= `DELAY;
			case (microcodeROM[current_state])
			0: current_state <= current_state + 1;
			1: current_state <= dispatchROM1[Y];
			2: current_state <= dispatchROM2[Y];
			3: current_state <= 7;
			4: current_state <= 0;
			5: current_state <= 4'bxxxx;
			6: current_state <= 4'bxxxx;
			7: current_state <= 4'bxxxx;
			endcase
		end
		else begin
		   	counter <= counter - 1;
		end
	end

endmodule
