`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 11/23/2022 10:52:11 PM
// Design Name: 
// Module Name: bin2View
// Project Name: Binary to 8 Segment Display
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: Display number in binary on to 7 Segment display
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// dispEn: Display Enable pins
// outDisp: Display output pins
// inBin: Binary input
// inClk: Clock Input
// 
//////////////////////////////////////////////////////////////////////////////////


module bin2View(dispEn, outDisp, inBin, inClk);

    output reg [7:0] outDisp;

    input [13:0] inBin;
    input inClk;

    reg [15:0] bcd;
    output reg [3:0] dispEn;   
    integer i;
    reg [19:0] refreshCounter=20'd0;
    reg [1:0] ledActivatePin;
        
    always @(inBin) begin
        bcd=0;		 	
        for (i=0;i<14;i=i+1) begin					//Iterate once for each bit in input number
            if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 3;		//If any BCD digit is >= 5, add three
            if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 3;
            if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
            if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
            bcd = {bcd[14:0],inBin[13-i]};				//Shift one bit, and shift in proper bit from input 
            // Check if the above line inBin should be replaced by bcd
        end
end

    always @(posedge inClk)
    begin 
        refreshCounter <= refreshCounter + 1;
        ledActivatePin <= refreshCounter[19:18];

        case (ledActivatePin)
            2'b00: begin
                dispEn = 4'b1110;
                case(bcd[3:0])    
                    4'b0001: outDisp = 8'b11111001; // "1" 
                    4'b0010: outDisp = 8'b10100100; // "2" 
                    4'b0011: outDisp = 8'b10110000; // "3" 
                    4'b0100: outDisp = 8'b10011001; // "4" 
                    4'b0101: outDisp = 8'b10010010; // "5" 
                    4'b0110: outDisp = 8'b10000010; // "6" 
                    4'b0111: outDisp = 8'b11111000; // "7" 
                    4'b1000: outDisp = 8'b10000000; // "8"     
                    4'b1001: outDisp = 8'b10010000; // "9" 
                    default: outDisp = 8'b11000000; // "0"
            endcase
            end
            
            2'b01: begin
                dispEn = 4'b1101;
                case(bcd[7:4])    
                    4'b0000: outDisp = 8'b11111111; // "1"
                    4'b0001: outDisp = 8'b11111001; // "1" 
                    4'b0010: outDisp = 8'b10100100; // "2" 
                    4'b0011: outDisp = 8'b10110000; // "3" 
                    4'b0100: outDisp = 8'b10011001; // "4" 
                    4'b0101: outDisp = 8'b10010010; // "5" 
                    4'b0110: outDisp = 8'b10000010; // "6" 
                    4'b0111: outDisp = 8'b11111000; // "7" 
                    4'b1000: outDisp = 8'b10000000; // "8"     
                    4'b1001: outDisp = 8'b10010000; // "9" 
                    4'b0000: outDisp = 8'b11000000; // "0"
                    default: outDisp = 8'b11111111; // " "
            endcase
            end

            2'b10: begin
                dispEn = 4'b1011;
                case(bcd[11:8])    
                    4'b0001: outDisp = 8'b11111001; // "1" 
                    4'b0010: outDisp = 8'b10100100; // "2" 
                    4'b0011: outDisp = 8'b10110000; // "3" 
                    4'b0100: outDisp = 8'b10011001; // "4" 
                    4'b0101: outDisp = 8'b10010010; // "5" 
                    4'b0110: outDisp = 8'b10000010; // "6" 
                    4'b0111: outDisp = 8'b11111000; // "7" 
                    4'b1000: outDisp = 8'b10000000; // "8"     
                    4'b1001: outDisp = 8'b10010000; // "9" 
                    4'b0000: outDisp = 8'b11000000; // "0"
                    default: outDisp = 8'b11111111; // " "
            endcase
            end
            
            2'b11: begin
                dispEn = 4'b0111;
                case(bcd[15:12])    
                    4'b0001: outDisp = 8'b11111001; // "1" 
                    4'b0010: outDisp = 8'b10100100; // "2" 
                    4'b0011: outDisp = 8'b10110000; // "3" 
                    4'b0100: outDisp = 8'b10011001; // "4" 
                    4'b0101: outDisp = 8'b10010010; // "5" 
                    4'b0110: outDisp = 8'b10000010; // "6" 
                    4'b0111: outDisp = 8'b11111000; // "7" 
                    4'b1000: outDisp = 8'b10000000; // "8"     
                    4'b1001: outDisp = 8'b10010000; // "9" 
                    4'b0000: outDisp = 8'b11000000; // "0"
                    default: outDisp = 8'b11111111; // " "
            endcase
            end
        endcase
    end 

endmodule
