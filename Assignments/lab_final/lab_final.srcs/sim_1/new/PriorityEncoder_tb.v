`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 11:46:20 AM
// Design Name: 
// Module Name: PriorityEncoder_tb
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


module PriorityEncoder_tb();

    reg [3:0] W;
    wire [1:0] Y;
    wire Z;
    
    PriorityEncoder UT (W, Y, Z);
    
    initial begin
        
        W = 4'b0000; #10;
        W = 4'b0001; #10;
        W = 4'b0010; #10;
        W = 4'b0011; #10;
        W = 4'b0100; #10;
        W = 4'b0101; #10;
        W = 4'b0110; #10;
        W = 4'b0111; #10;
        W = 4'b1000; #10;
        W = 4'b1001; #10;
        W = 4'b1010; #10;
        W = 4'b1011; #10;
        W = 4'b1100; #10;
        W = 4'b1101; #10;
        W = 4'b1110; #10;
        W = 4'b1111; #10;
        
        $finish;
    end

endmodule
