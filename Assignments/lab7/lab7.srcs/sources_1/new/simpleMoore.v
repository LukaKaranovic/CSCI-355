`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 05:32:01 PM
// Design Name: 
// Module Name: simpleMoore
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

// Module to implement a simple Moore FSM that outputs 1 if there is a 11 pattern in input w.
module simpleMoore(Clk, Resetn, w, z);

    input wire Clk, Resetn, w;
    output reg z;
    
    reg [1:0] y, Y; // 2-bit current and next state variables
    parameter A = 2'b00, B=2'b01, C = 2'b10; // Define states
    
    // Determine next state based on current state and w
    always @(w, y) begin
        case (y)
            A: if (w) Y = B;
                else Y = A;
            B: if (w) Y = C;
                else Y = A;
            C: if (w) Y = C;
                else Y = A;
            default: Y = 2'bxx; // Don't care
            
        endcase
        if (y == C) z = 1;
        else z = 0;
    end
    
    
    // Update current state + handle async reset
    always @(negedge Resetn, posedge Clk) begin
        #10;
        if (Resetn == 0) y <= A;
        else y <= Y;
    end
    
endmodule
