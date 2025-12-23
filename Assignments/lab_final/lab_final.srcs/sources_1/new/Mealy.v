`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 02:40:31 PM
// Design Name: 
// Module Name: Mealy
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


module Mealy(
    input wire Clk, x,
    output reg z
    );
    
    reg [2:0] y, Y; 
    parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100, F = 3'b101;

    // Determine next state and output z based on input w. 
    always @(x, y) begin
        case (y)
            A: if (x) begin 
                Y = B;
                z = 0;
            end
            else begin
                Y = A;
                z = 0;
            end 
            B: if (x) begin 
                Y = C;
                z = 0;
            end
            else begin
                Y = D;
                z = 0;
            end
            C: if (x) begin 
                Y = C;
                z = 0;
            end
            else begin
                Y = E;
                z = 0;
            end 
            D: if (x) begin 
                Y = B;
                z = 0;
            end
            else begin
                Y = F;
                z = 0;
            end 
            E: if (x) begin 
                Y = B;
                z = 0;
            end
            else begin
                Y = F;
                z = 1;
            end 
            F: if (x) begin 
                Y = B;
                z = 0;
            end
            else begin
                Y = A;
                z = 1;
            end  
            default: Y = A; // If no current state, set next state to inital state
        endcase
    end

    // Handle clock updates and reset, reset is async and happens when it is set to 0.
    always @(posedge Clk) begin
        #10;
        y <= Y;     
    end

endmodule

