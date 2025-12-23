`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 05:57:23 PM
// Design Name: 
// Module Name: complexMoore
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

// Module to implement a more complex Moore FSM that outputs 1 if there is a 110 or 101 pattern in input w.
module complexMoore(Clk, Reset, w, z);
    input wire Clk, Reset, w;
    output reg z;
    
        
    reg [2:0] y, Y; // 3-bit current and next state variables
    parameter A = 3'b000, B=3'b001, C = 3'b011, D = 3'b110, E = 3'b010, F = 3'b101; // Define states
    
    // Determine next state based on current state and w
    always @(w, y) begin
        case (y)
            A: if (w) Y = B;
                else Y = A;
            B: if (w) Y = C;
                else Y = E;
            C: if (w) Y = C;
                else Y = D;
            D: if (w) Y = F;
                else Y = A;
            E: if (w) Y = F;
                else Y = A;
            F: if (w) Y = C;
                else Y = E;
            default: Y = 3'bxxx; // Don't care
            
        endcase
        if (y == D | y == F) z = 1;
        else z = 0;
    end
    
    
    // Update current state + handle async reset
    always @(negedge Reset, posedge Clk) begin
        #10; // Clock delay for Moore model
        if (Reset == 0) y <= A;
        else y <= Y;
    end
    
endmodule
