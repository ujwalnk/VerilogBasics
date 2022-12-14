`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 17.11.2022 05:36:45
// Design Name: Memory Block
// Module Name: memoryBlock
// Project Name: memoryBlock
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: Simple Memory Block
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module memoryBlock(out, in, address, chipSelect, readEn, writeEn, clk);

    output reg [7:0] out;
    input [7:0]in;

    input chipSelect, readEn, writeEn, clk; 
    input address;
    
    reg [1023:0] data[7:0];
    
    always @(posedge clk)
    begin
        // On Chip select
        if(chipSelect)
        begin
            // Check for read enable, write disable
            if(readEn && !writeEn)
                 out <= data[address];

            // Check for write enable, read disable
            if(!readEn && writeEn)
                 data[address] <= in;
        end
        // High Impedence (Open circuit when chip not selected)
        else
            out = 8'bz;
    end
endmodule
