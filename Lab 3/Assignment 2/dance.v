`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:55 12/18/2017 
// Design Name: 
// Module Name:    dance 
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
module dance(
   	clk,
	led0,
	led1,
	led2,
	led3,
	led4,
	led5,
	led6,
	led7
    );
	 
	 input clk;
	 
	 output led0;
	 reg led0 = 1;
	 output led1;
	 reg led1 = 0;
	 output led2;
	 reg led2 = 0;
	 output led3;
	 reg led3 = 0;
	 output led4;
	 reg led4 = 0;
	 output led5;
	 reg led5 = 0;
	 output led6;
	 reg led6 = 0;
	 output led7;
	 reg led7 = 0;
	 
	 reg[27:0] counter = 50_000_000;
	 
	 always @(posedge clk)
	    if (counter == 0) begin
		    counter <= 50_000_000;
		    led1 <= led0;
		    led2 <= led1;
		    led3 <= led2;
		    led4 <= led3;
		    led5 <= led4;
		    led6 <= led5;
		    led7 <= led6;
		    led0 <= led7;
	    end
	    else begin
		    counter <= counter - 1;
	    end

endmodule
