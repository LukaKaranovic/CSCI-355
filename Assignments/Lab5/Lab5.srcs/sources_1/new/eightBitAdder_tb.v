`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 05:02:54 PM
// Design Name: 
// Module Name: eightBitAdder_tb
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


module eightBitAdder_tb();
    reg [7:0] x, y;
    reg ci;
    
    wire [7:0] s;
    wire co;
    eightBitAdder ut(ci, x, y, s, co);
    
    
    initial begin   
        // Test case 1: 00000000 + 11111111 - carryin = 0
        ci = 1'd0; 
        x = 8'h00;
        y = 8'hFF;
        #20;
        
        // Test case 2: 00000000 + 11111111 - carryin = 1
        ci = 1'd1; 
        x = 8'h00;
        y = 8'hFF;
        #20;

        // Test case 3: 00101010 + 10011000 - carryin = 0
        ci = 1'd0; 
        x = 8'h2A;
        y = 8'h98;
        #20;

        // Test case 4: 00101010 + 10011000 - carryin = 1
        ci = 1'd1; 
        x = 8'h2A;
        y = 8'h98;
        #20;

        $display("Test completed");
        $finish;
    end
endmodule
