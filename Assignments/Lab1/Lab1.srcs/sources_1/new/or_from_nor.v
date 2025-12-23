`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 05:18:46 PM
// Design Name: 
// Module Name: or_from_nor
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


module or_from_nor(y, a, b);
    output y;
    input a, b;
    wire n;
    // ~(a+b)
    nor(n, a, b);
    // ~(~(a+b) + ~(a+b))
    nor(y, n, n);
    
endmodule
