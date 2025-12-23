`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 04:49:17 PM
// Design Name: 
// Module Name: eightBitAdder
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


module eightBitAdder(carryin, x, y, s, carryout);
        input [7:0] x, y;
        input carryin;
        output [7:0] s;
        output carryout;
        
        wire c[7:1];
        
        fullAdder stage0 (carryin, x[0], y[0], s[0], c[1]);
        fullAdder stage1 (c[1], x[1], y[1], s[1], c[2]);
        fullAdder stage2 (c[2], x[2], y[2], s[2], c[3]);
        fullAdder stage3 (c[3], x[3], y[3], s[3], c[4]);
        fullAdder stage4 (c[4], x[4], y[4], s[4], c[5]);
        fullAdder stage5 (c[5], x[5], y[5], s[5], c[6]);
        fullAdder stage6 (c[6], x[6], y[6], s[6], c[7]);
        fullAdder stage7 (c[7], x[7], y[7], s[7], carryout);

endmodule
