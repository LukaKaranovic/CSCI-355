`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 06:09:08 PM
// Design Name: 
// Module Name: upcount
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


module upcount #(parameter N = 4) (input wire clk,
    input wire reset,
    input wire en,
    output reg[N-1: 0] q);

    always @(posedge clk) begin 
        if (reset) begin
            q <= 0;
        end
        else if (en) begin
            q <= q + 1;
        end
    end
endmodule
