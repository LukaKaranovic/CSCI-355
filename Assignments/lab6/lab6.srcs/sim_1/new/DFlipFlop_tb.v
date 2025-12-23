`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 05:52:07 PM
// Design Name: 
// Module Name: DFlipFlop_tb
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


module DFlipFlop_tb();
    reg d = 0;
    reg clk = 0;
    reg reset_n = 1;
    wire q;

    DFlipFlop ut(clk, d, reset_n, q);
    
    always begin
        clk = ~clk;
        #10;      
    end


    initial begin
        d = 0; #25;
        d = 1; #25;
        
        reset_n = 0; #25;
        reset_n = 1; #25;
        
        d = 0; #25;
        d = 1; #25;
        
        $finish;
    end


endmodule
