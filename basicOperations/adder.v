`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 11/23/2022 08:02:41 PM
// Design Name: 
// Module Name: Adder
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 8 bit adder
// 
// Dependencies: fullAdder 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder(outS, inA, inB, inC);
    
    output [8:0]outS;

    input inC;
    input [7:0] inA;
    input [7:0] inB;

    wire[6:0] outC;

    fullAdder a1(outS[0], outC[0], inA[0], inB[0], inC);
    fullAdder a2(outS[1], outC[1], inA[1], inB[1], outC[0]);
    fullAdder a3(outS[2], outC[2], inA[2], inB[2], outC[1]);
    fullAdder a4(outS[3], outC[3], inA[3], inB[3], outC[2]);
    fullAdder a5(outS[4], outC[4], inA[4], inB[4], outC[3]);
    fullAdder a6(outS[5], outC[5], inA[5], inB[5], outC[4]);
    fullAdder a7(outS[6], outC[6], inA[6], inB[6], outC[5]);
    fullAdder a8(outS[7], outS[8], inA[7], inB[7], outC[6]);
    
endmodule
