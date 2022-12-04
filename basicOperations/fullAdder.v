`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 11/23/2022 07:57:06 PM
// Design Name: 
// Module Name: fullAdder
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 1 bit full adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fullAdder(out, outC, inA, inB, inC);
    input inA, inB, inC;
    output out, outC;
    
    assign out = (inA^inB^inC);
    assign outC =((inA&inB)|(inB&inC)|(inA&inC));
endmodule
