`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 17.11.2022 05:36:45
// Design Name: Memory Block Simulation
// Module Name: simulation
// Project Name: Memory Block (Simulation)
// Target Devices: 
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


module MemoryBlockSimulation();
    
    reg [7:0] in;
    reg clk;
    
    wire [7:0] out;
    reg address = 3'b000;
    reg cs = 1'b0;
    reg wr = 1'b0;
    reg rd = 1'b1;

    MemoryBlock dut(.out(out), .in(in), .address(address), .cs(cs), .rd(rd), .wr(wr), .clk(clk));
    
    initial begin

    // Clock Pulse
    #20;
    assign clk = 1'b0;
    #20;

    // Writing to address
    assign address = 10'b0010010010; 
    assign in = 8'b11111001;
    assign cs = 1'b1; 
    assign rd = 1'b0;
    assign wr = 1'b1;
    assign clk = 1'b1;
    
    // Clock Pulse
    #20;
    assign clk = 1'b0;
    #20;
    
    // Reading from address
    assign rd = 1'b1;
    assign address = 10'b0010010010; 
    assign cs = 1'b1;
    assign wr = 1'b0;
    assign clk = 1'b1;
    
    // Clock Pulse
    #20;
    assign clk = 1'b0;

    $stop;
endmodule
