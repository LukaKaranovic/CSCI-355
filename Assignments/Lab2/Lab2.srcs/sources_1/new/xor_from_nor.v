`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 05:21:50 PM
// Design Name: 
// Module Name: xor_from_nor
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


module xor_from_nor(f, x1, x2);
    input x1, x2;
    output f;
    wire n1, n2, n3, n4;
    // n1 = ~(x1 + x2)
    nor(n1, x1, x2);
    // n2 = ~(~(x1 + x2) + x1)
    nor(n2, n1, x1);
    // n3 = ~(~(x1 + x2) + x2)
    nor(n3, n1, x2);
    // n4 = ~( (~(~(x1 + x2) + x1)) + (~(~(x1 + x2) + x2)) )
    nor(n4, n3, n2);
    // f = ~( ~( (~(~(x1 + x2) + x1)) + (~(~(x1 + x2) + x2))) ) = (x1~x2) + (~x1x2) <- confusing i know
    nor(f, n4, n4);
endmodule
