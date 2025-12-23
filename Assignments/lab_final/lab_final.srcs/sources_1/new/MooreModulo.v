`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 12:12:58 PM
// Design Name: 
// Module Name: MooreModulo
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


module MooreModulo(
    input wire w, Clk, Resetn,
    output reg [2:0] z
    );
    reg [2:0] y, Y; // Current and next state
    // States for current value of output.
    parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100, F = 3'b101, G = 3'b110, H = 3'b111;
    
    always @(w, y) begin
        case (y)
            A: if (w) Y = B;
               else Y = y;
            B: if (w) Y = C;
               else Y = y;
            C: if (w) Y = D;
               else Y = y;
            D: if (w) Y = E;
               else Y = y;
            E: if (w) Y = F;
               else Y = y;
            F: if (w) Y = G;
               else Y = y;
            G: if (w) Y = H;
               else Y = y;
            H: if (w) Y = A;
               else Y = y;
            default: Y = 3'bxxx; // Don't care
            
        endcase
        z = y;
    end
    
    always @(negedge Resetn, posedge Clk) begin
        #10;
        
        if (Resetn == 0) y <= A;
        else y <= Y;
    end
    
endmodule
