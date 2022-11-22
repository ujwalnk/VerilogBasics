`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 29.09.2022 06:27:32
// Design Name: MUX (2x1)
// Module Name: mu2x1
// Project Name: Multiplexer
// Target Devices: Xilinx Boolean Spartan7
// Tool Versions: Vivado 21
// Description: 2x1 Multiplexer
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////

module MU2X1(out, selection, in);
    output out;
    input selection;
    input [0:1]in;
    
    assign out = selection? in[1] : in[0];
endmodule
