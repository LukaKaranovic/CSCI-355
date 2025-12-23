`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 05:10:20 PM
// Design Name: 
// Module Name: GatedDLatch_tb
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


module GatedDLatch_tb();
    wire q, q_n;
    reg d, en;
    reg clk = 0;
    
    GatedDLatch ut(clk, d, en, q, q_n);
    
    always begin
        clk = ~clk;
        #10;
    end
    
    
    initial begin
        en = 0; #35;
        d = 0; #35;
        d = 1; #35;
        d = 0; #35;
            
        en = 1; #35;
        d = 0; #35;
        d = 1; #35;
        d = 0; #35;
        $finish;
     end

endmodule
