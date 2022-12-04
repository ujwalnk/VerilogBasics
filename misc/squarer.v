`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 05.09.2022 06:22:21
// Design Name: Squarer Circuit 
// Module Name: sq
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


module sq(y0, y1, y2, y3, y4, y5, i0, i1, i2);
	// Delare the outputs and inputs respectively
	output y0, y1, y2, y3, y4, y5;
	input i0, i1, i2;

	// Delcare the wires
	wire w1, w2, w3, w4;

	// Declare the gate operations
	not(w1, i0);
	not(w2, i1);
	xor(w3, i1, i2);
	or(w4, w2, i0);
	
	// We cannot assign the ouput to input directly, thus using buffer
	buf(y0, i0);
	// We can also use or gate
	
	and(y1, i2, 0); // Can also use or(y1, 0, 0)
	and(y3, i0, w3);
	and(y4, i2, w4);
	and(y5, i2, i1);
endmodule