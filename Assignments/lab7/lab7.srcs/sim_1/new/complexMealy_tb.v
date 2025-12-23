`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 10:57:04 AM
// Design Name: 
// Module Name: complexMealy_tb
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


module complexMealy_tb();

    reg Clk = 0;
    reg Resetn = 0;
    reg w;
    wire z;
    
    complexMealy UT(Clk, Resetn, w, z);
    
    always begin
        Clk = ~Clk;
        #5;
    end
    
    initial begin
        w = 0; #10;
        w = 0; #10;
        Resetn = 1; 
        w = 0; #10;
        w = 0; #10;
        w = 1; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;        
        w = 0; #10;
        w = 1; #10;       
        w = 0; #10;
        w = 1; #10;                        
        w = 1; #10;
        Resetn = 0;
        w = 0; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;       
        w = 0; #10;
        w = 1; #10;          
        $finish;
    end

endmodule
