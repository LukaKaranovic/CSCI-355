`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 12:13:36 PM
// Design Name: 
// Module Name: MooreModulo_tb
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


module MooreModulo_tb();

    reg Clk = 0;
    reg Resetn = 0;
    reg w;
    wire [2:0] z;
    
    MooreModulo UT(w, Clk, Resetn, z);
    
    always begin
        Clk = ~Clk;
        #5;
    end
    
    initial begin
        w = 0; #20; 
        Resetn = 1;
        w = 1; #60;
        w = 0; #30;
        w = 1; #40;
        w = 1; #20;
        Resetn = 0;
        w = 1; #30;
        w = 0; #20;
        $finish;
    end
endmodule
