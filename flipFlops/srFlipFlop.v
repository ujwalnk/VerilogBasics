`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 13.09.2022 06:22:21
// Design Name: SR Flip Flop 
// Module Name: srFlipFlop
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 
// 
// Dependencies: srCFlipFLop
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////

module sr(output out, outC, input inS, inR);
	wire sNot, rNot;

	nand(sNot, inS, inS);
	nand(rNot, inR, inR);

	srCFlipFlop(out, outC, sNot, rNot);
endmodule
