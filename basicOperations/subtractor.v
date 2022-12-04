`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 11/24/2022 04:47:55 AM
// Design Name: 
// Module Name: subtractor
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 8 bit subtractor
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module subtractor(out, outC, inA, inB);
    output reg [7:0] out;
    output reg outC;
    input [7:0] inA, inB;
            
    always @ (*)
    begin
        out = inA-inB; 
        outC = inA < inB ? 1 : 0;
        out = outC ? 1 - out - 1: out;
    end
    
endmodule
