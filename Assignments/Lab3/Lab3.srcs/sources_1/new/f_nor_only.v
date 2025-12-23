`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 04:42:18 PM
// Design Name: 
// Module Name: f_nor_only
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


module f_nor_only(f, x1, x2, x3);    
    output f;
    input x1, x2, x3;
    wire a, b, c, d;
    
    // a = ~x1
    nor(a, x1, x1);
    // b = ~x3
    nor(b, x3, x3);
    // c = ~(x1 + x3)
    nor(c, x1, x3);
    // d = ~(~x1 + x2 + ~x3)
    nor(d, a, x2, b);
    
    nor(f, c, d);
endmodule
