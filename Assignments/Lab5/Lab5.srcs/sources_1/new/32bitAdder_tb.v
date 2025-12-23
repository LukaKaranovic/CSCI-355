`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 05:31:27 PM
// Design Name: 
// Module Name: 32bitAdder_tb
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


module nBitAdder_tb();
    reg ci;
    reg [31:0] x, y;
    
    wire [31:0] s; 
    wire co;
    nBitAdder ut(ci, x, y, s, co);
    
    initial begin   
        // Test case 1: carryin = 0
        ci = 1'd0; 
        x = 32'hA214;
        y = 32'h2B80;
        #20;
        
        // Test case 2: carryin = 1
        ci = 1'd1; 
        x = 32'hA214;
        y = 32'h2B80;
        #20;

        // Test case 3: carryin = 0
        ci = 1'd0; 
        x = 32'h0000;
        y = 32'hFFFF;
        #20;

        // Test case 4: carryin = 1
        ci = 1'd1; 
        x = 32'h0000;
        y = 32'hFFFF;
        #20;

        $display("Test completed");
        $finish;
    end


endmodule
