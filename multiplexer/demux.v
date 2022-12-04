`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 13.10.2022 06:22:21
// Design Name: DeMux 
// Module Name: demux
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: Simple DeMux using case statements
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 1.0 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module DeMux(out, s);
    input [2:0] s;
    output reg [7:0]out;
    
    always @(*)
    begin
            out[0] = 1'b0;
            out[1] = 1'b0;
            out[2] = 1'b0;
            out[3] = 1'b0;
            out[4] = 1'b0;
            out[5] = 1'b0;
            out[6] = 1'b0;
            out[7] = 1'b0;
            
        case(s)
            3'b000: out[0] = 1;
            3'b001: out[1] = 1;
            3'b010: out[2] = 1;
            3'b011: out[3] = 1;
            3'b100: out[4] = 1;
            3'b101: out[5] = 1;
            3'b110: out[6] = 1;
            3'b111: out[7] = 1;
       endcase
    end
endmodule
