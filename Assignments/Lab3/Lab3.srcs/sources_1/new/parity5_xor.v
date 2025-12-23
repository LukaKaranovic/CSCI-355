`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 04:19:14 PM
// Design Name: 
// Module Name: parity5_xor
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

// 5-bit even-parity generator f = x1 ^ x2 ^ x3 ^ x4 ^ x5
module parity5_xor(f, x1, x2, x3, x4, x5);
    output f;
    input x1, x2, x3, x4, x5;
    
    wire a, b, c;
    
    xor(a, x1, x2);
    xor(b, a, x3);
    xor(c, b, x4);
    xor(f, c, x5);
    
endmodule
