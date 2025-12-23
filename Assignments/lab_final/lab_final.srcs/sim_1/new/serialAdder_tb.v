`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 05:05:09 PM
// Design Name: 
// Module Name: serialAdder_tb
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


module serialAdder_tb();

    reg Clk = 0;
    reg Reset = 1;
    reg [7:0] A, B;
    
    wire [7:0] S;
    
    serialAdder UT(Clk, Reset, A, B, S);
    
    always begin 
        Clk = ~Clk;
        #5;
    end
    
    initial begin
        A = 8'hA4;
        B = 8'h2D;
        #15; // So things can load
        Reset = 0; #120;
        $finish;
        
    end

endmodule
