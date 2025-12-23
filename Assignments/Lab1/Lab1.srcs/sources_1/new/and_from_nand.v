`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 04:53:57 PM
// Design Name: 
// Module Name: and_from_nand
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


module and_from_nand(y, a, b);
    output y;
    input a, b;
    wire n;
    nand (n, a, b);
    nand (y, n, n);
endmodule
