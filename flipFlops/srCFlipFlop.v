`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 13.09.2022 06:22:21
// Design Name: SR Complement Flip Flop 
// Module Name: srCFlipFlop
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: S bar R bar Flip Flop
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module srBFlipFlop(out, outC, inS, inR);
	output out, !out;
	input inS, inR;

	nand(out, inS, !out);
	nand(outC, inR, out);
endmodule
