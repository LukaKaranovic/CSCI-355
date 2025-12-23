`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 10:56:46 AM
// Design Name: 
// Module Name: complexMealy
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


module complexMealy(Clk, Resetn, w, z);

    input wire Clk, Resetn, w;
    output reg z;
    
    reg [1:0] y, Y; 
    parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11;

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
                Y = C;
                z = 0;
            end
            else begin
                Y = D;
                z = 0; 
            end
            C: if (w) begin 
                Y = C;
                z = 0;
            end
            else begin
                Y = D;
                z = 1;
            end 
            D: if (w) begin
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
