`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 03:54:41 PM
// Design Name: 
// Module Name: fourBitComparator_tb
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


module fourBitComparator_tb();

    reg [3:0] a, b;
    wire eq, gt, lt;

    fourBitComparator ut(a, b, eq, gt, lt);
    
    initial begin
        
        a = 4'b1101; // 13
        b = 4'b0011; // 3
        #10;       
        a = 4'b0100; // 4
        b = 4'b0101; // 5
        #10;       
        a = 4'b1111; // 15
        b = 4'b1111; // 15
        #10;       
        a = 4'b1000; // 8
        b = 4'b0110; //6
        #10;       

        $display("Done.");
        $finish;
    end
    
endmodule
