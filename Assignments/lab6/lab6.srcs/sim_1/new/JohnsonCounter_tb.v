`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 07:42:00 PM
// Design Name: 
// Module Name: JohnsonCounter_tb
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


module JohnsonCounter_tb();
    parameter N = 8;
    reg clk = 0;
    reg reset_n = 0;
    wire [N-1:0] q;

    JohnsonCounter #(8) ut (reset_n, clk, q);
    
    always begin
        clk = ~clk;
        #10;
    end
    
    initial begin
        #10;
        reset_n = 0;
        #25;
        reset_n = 1;
        
        #400;
        
        
        reset_n = 0;
        #25;
        reset_n = 1;
        
        #100;
    
        $finish;
    end    


endmodule
