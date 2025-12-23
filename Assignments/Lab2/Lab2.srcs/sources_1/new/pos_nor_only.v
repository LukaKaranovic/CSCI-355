`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 05:01:25 PM
// Design Name: 
// Module Name: pos_nor_only
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


module pos_nor_only(f, x1, x2, x3);

    input x1, x2, x3;
    output f;
    wire n1, n2, n3;
    // n1 = ~(x1 + x2)
    nor(n1, x1, x2);
    // n2 = ~(x3 + x3) = ~x3
    nor(n2, x3, x3);
    // n3 = ~(x2 + ~x3)
    nor(n3, x2, n2);
    // f = ~(~(x2 + ~x3) + ~(x1 + x2)) = (x1 + x2)(x2 + ~x3)
    nor(f, n3, n1);
endmodule
