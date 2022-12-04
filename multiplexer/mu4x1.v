`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 29.09.2022 06:27:32
// Design Name: 
// Module Name: mu4x1
// Project Name: Multiplexer
// Target Devices: Xilin Boolean Spartan 7
// Tool Versions: Vivao 21
// Description: 
// 
// Dependencies: MU2X1.v
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MU4X1(out, s, i);
    output out;
    input [0:3]i;
    input [0:1]s;
    
    wire [0:1]w;  
        
    // Selection logic
    MU2X1(w[0], i[0:1], s[0]);
    MU2X1(w[1], i[1:2], s[0]);
    MU2X1(out, w[0:1], s[1]);

endmodule
