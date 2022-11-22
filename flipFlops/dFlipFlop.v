`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 13.10.2022 06:22:21
// Design Name: Data Flop Flop 
// Module Name: dFlipFlop
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 1 bit data flip flop
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module dFlipFlop(q, d, clk);
	output reg q;
	input d, clk;

	always @ (posedge clk)
		begin
			q <= d;
			// Transfer the data to the register
		end
endmodule