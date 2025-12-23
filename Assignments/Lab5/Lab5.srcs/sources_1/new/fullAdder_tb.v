`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 04:36:54 PM
// Design Name: 
// Module Name: fullAdder_tb
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

module fullAdder_tb();

    reg x, y, ci;
    wire s, co;
    fullAdder ut(ci, x, y, s, co);

    initial begin   
        {ci, x, y} = 3'd0; # 20;
        {ci, x, y} = 3'd1; # 20;
        {ci, x, y} = 3'd2; # 20;
        {ci, x, y} = 3'd3; # 20;
        {ci, x, y} = 3'd4; # 20;
        {ci, x, y} = 3'd5; # 20;
        {ci, x, y} = 3'd6; # 20;
        {ci, x, y} = 3'd7; # 20;

        $display("Test completed");
        $finish;
    end

endmodule
