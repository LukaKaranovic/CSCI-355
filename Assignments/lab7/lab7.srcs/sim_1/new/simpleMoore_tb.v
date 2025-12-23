`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 05:43:04 PM
// Design Name: 
// Module Name: simpleMoore_tb
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


module simpleMoore_tb();
    reg Clk = 0;
    reg Resetn = 0;
    reg w = 0;
    wire z;
    
    simpleMoore UT(Clk, Resetn, w, z);
    
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
        Resetn = 1; 
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
