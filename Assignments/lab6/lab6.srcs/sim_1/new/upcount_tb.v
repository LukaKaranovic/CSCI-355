`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 06:22:39 PM
// Design Name: 
// Module Name: upcount_tb
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


module upcount_tb();
    parameter N = 4;
    reg clk = 0;
    reg reset = 0;
    reg en = 1;

    wire [N-1:0] q;
    upcount #(N) ut(clk, reset, en, q);
    
    always begin
        clk = ~clk;
        #10;      
    end
    
    
    initial begin
        // initialize
        reset = 1;
        en = 0;
        #25;
        
        // count up
        reset = 0;
        en = 1;
        #320;
        
        // reset
        reset = 1; #50;
        reset = 0;
        
        // count up again
        #50;
        
        // stop count for a bit (disable)
        en = 0; #30;
        
        // continue counting
        en = 1; #50;
        
        $finish;
    end

endmodule

