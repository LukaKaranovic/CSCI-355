`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 05:30:04 PM
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(input wire clk,
    input wire d,
    input wire reset_n,
    output wire q);
    
    wire w1, w2, w3, w4, w5, w6;
    
    wire nclk, nd, q_n;
    not(nclk, clk);
    not(nd, d);
    
    nand(w1, d, reset_n, nclk);
    nand(w2, nd, nclk);
    
    nand(w3, w1, w4);
    nand(w4, w2, reset_n, w3);
    
    nand(w5, w3, reset_n, clk);
    nand(w6, w4, clk);
    
    nand(q, w5, q_n);
    nand(q_n, w6, reset_n, q);
    
endmodule
