`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 02:40:47 PM
// Design Name: 
// Module Name: Mealy_tb
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


module Mealy_tb();
    reg Clk = 0;
    reg x;
    wire z;
    
    Mealy UT(Clk, x, z);
    
    always begin
        Clk = ~Clk;
        #5;
    end
    
    initial begin
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 0; #10;
        $finish;
    end

endmodule
