`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 04:50:07 PM
// Design Name: 
// Module Name: SRLatchNor
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


module SRLatchNor(input wire s,
    input wire r,
    output wire q,
    output wire q_n);

    nor(q_n, s, q);
    nor(q, r, q_n);

endmodule
