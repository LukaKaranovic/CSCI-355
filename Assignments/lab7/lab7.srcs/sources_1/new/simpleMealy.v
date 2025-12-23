`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 10:42:40 AM
// Design Name: 
// Module Name: simpleMealy
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


module simpleMealy(Clk, Resetn, w, z);

    input wire Clk, Resetn, w;
    output reg z;
    
    reg y, Y; 
    parameter A=1'b0, B=1'b1;

    // Determine next state and output z based on input w. 
    always @(w, y) begin
        case (y)
            A: if (w) begin 
                Y = B;
                z = 0;
            end
            else begin
                Y = A;
                z = 0;
            end 
            B: if (w) begin
                Y = B;
                z = 1;
            end
            else begin
                Y = A;
                z = 0; 
            end
        endcase
    end

    // Handle clock updates and reset, reset is async and happens when it is set to 0.
    always @(negedge Resetn, posedge Clk) begin
        #10;
        if (Resetn == 0) y <= A;
        else y <= Y;     
    end

endmodule
