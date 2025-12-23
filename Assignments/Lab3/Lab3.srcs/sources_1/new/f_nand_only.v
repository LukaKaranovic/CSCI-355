`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 04:38:54 PM
// Design Name: 
// Module Name: f_nand_only
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


module f_nand_only(f, x1, x2, x3);

    output f;
    input x1, x2, x3;
    
    wire a, b, c, d, e;
    // a = ~x\
    nand(a, x1, x1);
    // b = ~x3
    nand(b, x3, x3);
    // c = ~(x1x2)
    nand(c, x1, x2);
    // d = ~(~x1x3)
    nand(d, a, x3);
    // e = ~(x1~x3)
    nand(e, x1, b);
    
    nand(f, c, d, e);
    

endmodule
