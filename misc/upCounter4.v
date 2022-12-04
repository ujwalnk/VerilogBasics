`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 22.11.2022 06:22:21
// Design Name: 4 Bit Up Counter
// Module Name: upCounter4
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 4 Bit Up Counter
// 
// Dependencies: tFlipFlop
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: Output can be complemented to get down counter
// 
//////////////////////////////////////////////////////////////////////////////////


module 4bitUpCounter(q, t, clk);
	output reg [0:3]q;
	input [0:3]t;
	input clk;

	tFlipFlip LSB(q[0], t[0], clk);
	tFlipFlip  1B(q[1], t, q[0]);
	tFlipFlip  2B(q[2], t, q[1]);
	tFlipFlip MSB(q[3], t, q[2]);

endmodule