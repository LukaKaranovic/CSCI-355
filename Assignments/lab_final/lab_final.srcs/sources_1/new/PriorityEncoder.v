`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 11:45:50 AM
// Design Name: 
// Module Name: PriorityEncoder
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


module PriorityEncoder(
    input wire [3:0] W,
    output wire [1:0] Y,
    output wire Z 
    );
    
    reg [1:0] Y_reg;
    reg Z_reg;

    assign Y = Y_reg;
    assign Z = Z_reg;
    
    always @(W) begin
        Z_reg = 1'b1;
        casex (W)
            4'b0001: Y_reg = 2'b00;
            4'b001x: Y_reg = 2'b01;
            4'b01xx: Y_reg = 2'b10;
            4'b1xxx: Y_reg = 2'b11;
            default: begin // 0000 case
                Z_reg = 1'b0;
                Y_reg = 2'bxx;
            end
        endcase
     end
    
endmodule
