`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:55 12/18/2017 
// Design Name: 
// Module Name:    blink
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
`define OFF_TIME 25_000_000
`define ON_TIME (`OFF_TIME*2)

module blink (clk, led0);
	 
	 input clk;
	 
	 output led0;
	 reg led0 = 0;
	 
	 reg[27:0] counter = 0;
	 
	 always @(posedge clk)
	    if (counter == `OFF_TIME) begin
		    led0 <= 0;
                    counter <= counter + 1;
            end
            else if (counter == `ON_TIME) begin
                    led0 <= 1;
                    counter <= 0;
            end
            else begin
                    counter <= counter + 1;
            end
	 end
endmodule
