`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 05:10:11 PM
// Design Name: 
// Module Name: xor_from_nand
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


module xor_from_nand(f, x1, x2);
    input x1, x2;
    output f;
    wire n1, n2, n3;
    // n1 = ~(x1x2)
    nand(n1, x1, x2);
    // n2 = ~(~(x1x2)x1)
    nand(n2, n1, x1);
    // n3 = ~(~(x1x2)x2)
    nand(n3, n1, x2);
    // f = ~( (~(x1x2)x1) (~(x1x2)x2) ) = (x1~x2) + (~x1x2)
    nand(f, n2, n3);
endmodule
