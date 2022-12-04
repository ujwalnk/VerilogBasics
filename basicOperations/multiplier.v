`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Madilu
// Engineer: Ujwal N K
// 
// Create Date: 11/24/2022 05:33:40 AM
// Design Name: 
// Module Name: multiplier
// Project Name: 
// Target Devices: Xilinx Boolean Spartan 7
// Tool Versions: Vivado 21
// Description: n bit multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Change parameter to change the number of bits
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplier(out, inA, inB);
    parameter bit = 4;
    
  input [(bit -1):0] inA, inB;
    reg [((2*bit)-1):0] mid[(bit -1):0]; //holds shifted values
    wire [((2*bit)-1):0] inAExt; //inA extended to 2 * bit
    output reg [((2*bit)-1):0] out;
    integer i;
  
    assign inAExt = {{bit{1'b0}}, inA}; //not required
  
  
    always@*
      begin
        mid[0] = inAExt & {(2*bit){inB[0]}};
        //Shifting
        for(i = 1; i < bit; i = i + 1)
          begin
            mid[i] = (inAExt << i )& {(2*bit){inB[i]}};
          end
        
        //Adding shifted values
        out = mid[0];
        for(i = 1; i < bit; i = i + 1)
           begin
              out = out + mid[i];
           end         
      end
    
endmodule
