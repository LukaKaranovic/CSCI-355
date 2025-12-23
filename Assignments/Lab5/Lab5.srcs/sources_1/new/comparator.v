`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 06:01:08 PM
// Design Name: 
// Module Name: comparator
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


module comparator(
        input wire eq_in,
        input wire gt_in,
        input wire lt_in,
        input wire a,
        input wire b,
        output wire eq,
        output wire gt,
        output wire lt
    );
    
    // could use < > = but I wanted to do it with and or not
    assign eq = eq_in & ~(a ^ b);
    assign gt = gt_in | (eq_in & a & ~b);
    assign lt = lt_in | (eq_in & ~a & b);
    
endmodule
