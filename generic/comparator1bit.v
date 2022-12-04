`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 07.09.2022 06:22:21
// Design Name: 1 Bit Comparator
// Module Name: comparator1Bit
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module 1bComparator(e, g, l, inA, inB);
	output e, g, l;
	input inA, inB;

	wire A', B';

	xnor(e, inA, inB);
	
	not(A', inA);
	not(B', inB);

	and(g, inA, B');
	and(l, A', inB);
endmodule