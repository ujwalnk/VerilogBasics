`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 22.11.2022 07:08:54
// Design Name: toggle Flip Flop
// Module Name: tFlipFlop
// Project Name: tFlipFlop
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: Toggle Flip Flop
// 
// Dependencies: dFlipFlop
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////

module tFlipFlop(out, in, clk);
	output out;
	input in, clk;
	wire d

	assign d = t^q;
	dFlipFlop(q, d, clk);
endmodule
