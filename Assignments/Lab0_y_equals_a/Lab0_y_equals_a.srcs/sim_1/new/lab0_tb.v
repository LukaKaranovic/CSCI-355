`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:02:12 PM
// Design Name: 
// Module Name: lab0_tb
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


module lab0_tb;
reg a;
wire y;
// Unit Under Test (UUT)
lab0 ut(a, y);
    initial begin
        a = 1'b0;
        #10; //delay
        a = 1'b1;
        #10;
        a = 1'b0;
        #10;
        a = 1'b1;
        #10;
    end
endmodule