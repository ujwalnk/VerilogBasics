`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 17.11.2022 05:50:45
// Design Name: 
// Module Name: clock1Hz
// Project Name: 1 Hz Clock
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: 
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module clock1Hz(outClk, inClk);
    output outClk;

    input inClk;

    reg [25:0]count=0;
    reg outClk;

    always @ (posedge inClk)
    begin
        count<=count+1;
        
        if(count==50_000_000)
        begin
            count<=0;
            outClk=~outClk;
        end
    end
endmodule
