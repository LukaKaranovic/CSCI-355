`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 10:44:14 AM
// Design Name: 
// Module Name: simpleMealy_tb
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


module simpleMealy_tb();
    reg Clk = 0;
    reg Resetn = 0;
    reg w;
    wire z;
    
    simpleMealy UT(Clk, Resetn, w, z);
    
    always begin
        Clk = ~Clk;
        #5;
    end
    
    initial begin
        w = 0; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;       
        w = 0; #10;
        w = 0; #10;     
        Resetn = 1;; 
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;        
        w = 1; #10;
        w = 1; #10;       
        w = 0; #10;
        w = 1; #10;                        
        w = 0; #10;
        Resetn = 0; 
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;       
        w = 0; #10;
        w = 0; #10;      
        $finish;
    end

endmodule
