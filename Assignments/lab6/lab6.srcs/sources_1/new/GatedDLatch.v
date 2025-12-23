`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 05:03:36 PM
// Design Name: 
// Module Name: GatedDLatch
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


module GatedDLatch(
    input wire clk,
    input wire d,
    input wire en,
    output reg q,
    output reg q_n
    );
    
    always @(clk) begin
        if (clk & en) begin
            q = d;
            q_n = ~q;
        end
    end 
    
endmodule
