`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 04:43:41 PM
// Design Name: 
// Module Name: sop_nand_only
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


module sop_nand_only(f, x1, x2, x3);
    input x1, x2, x3;
    output f;
    
    wire n1, n2, n3;
    // n1 = ~(x1x1) = ~x1
    nand(n1, x1, x1);
    // n2 = ~(x3x3) = ~x3
    nand(n2, x3, x3);
    // n3 = ~(x2~x3)
    nand(n3, x2, n2);
    // ~(~(x2~x3)~x1)
    nand(f, n3, n1);

endmodule
