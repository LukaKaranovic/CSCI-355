`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 07:41:45 PM
// Design Name: 
// Module Name: JohnsonCounter
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


module JohnsonCounter #(parameter N = 8) (
    input wire reset_n,
    input wire clk,
    output wire [N-1:0] q);
    
    wire n_last_q;
    
    not(n_last_q, q[0]);
    
    
    DFlipFlop stage0(clk, n_last_q, reset_n, q[N-1]); // Assign first input as ~q of last input
    
    genvar i;
    generate
        for (i = 1; i < N; i = i+1) begin
            begin: bitShift
                DFlipFlop stage(clk, q[i], reset_n, q[i-1]);
            end
        end
    endgenerate    
    // make flip flops and do bit shift
    always @(posedge clk) begin
  
    end
endmodule
