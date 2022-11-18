`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 13.10.2022 07:08:54
// Design Name: Binary Encoder
// Module Name: Encoder
// Project Name: Encoder
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: Binary Encoder
// 
// Dependencies: None 
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module Encoder(out, in);
    output reg [2:0] out;
    input [7:0] in;
    
    always @ (*)
    begin 
        out = 3'b000;
    
        case (in)
            8'b00000000: out = 3'b000;
            8'b00000010: out = 3'b001;
            8'b00000100: out = 3'b010;
            8'b00001000: out = 3'b011;
            8'b00010000: out = 3'b100;
            8'b00100000: out = 3'b101;
            8'b01000000: out = 3'b110;
            8'b10000000: out = 3'b111;
        endcase
    end
endmodule
