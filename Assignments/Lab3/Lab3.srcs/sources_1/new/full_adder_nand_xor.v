`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 04:16:00 PM
// Design Name: 
// Module Name: full_adder_nand_xor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_nand_xor(Co, S, xi, yi, ci);
    output Co, S;
    
    input xi, yi, ci;
    
    wire a, b, c;
    
    nand(a, xi, yi);
    
    xor(b, yi, xi);
    
    xor(S, b, ci);
    
    nand(c, b, ci);
   
    nand(Co, a, c);
endmodule
