`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 04:31:17 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(ci, xi, yi, so, co);
    input ci, xi, yi;
    output so, co;
    
    wire xy, xoy, xyc;
    // carry out
    and(xy, xi, yi);
    and(xyc, xoy, ci);
    or(co, xy, xyc);
    
    // sum
    xor(xoy, xi, yi);
    xor(so, xoy, ci);
     
endmodule
