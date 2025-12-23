`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 05:10:43 PM
// Design Name: 
// Module Name: and_from_nor
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


module and_from_nor(y, a, b);
    output y;
    input a, b;
    wire na, nb;
    
    // ~a and ~b using NOR with itself
    nor (na, a, a);
    nor (nb, b, b);
    // y = ~(~a + ~b)
    nor (y, na, nb);;
endmodule
