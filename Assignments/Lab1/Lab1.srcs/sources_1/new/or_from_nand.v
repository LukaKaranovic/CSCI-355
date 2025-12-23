`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 05:18:46 PM
// Design Name: 
// Module Name: or_from_nand
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


module or_from_nand(y, a, b);
    output y;
    input a, b;
    wire na, nb;
    // ~a
    nand(na, a, a);
    // ~b
    nand(nb, b, b);
    
    // ~(~a * ~b)
    nand(y, na, nb);
    
endmodule