`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 06:14:16 PM
// Design Name: 
// Module Name: fourBitComparator
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


module fourBitComparator(
        input wire [ 3:0 ] a,
        input wire [ 3:0 ] b,
        output wire equal,
        output wire greaterThan,
        output wire lessThan
    );
    
    wire [2:0] eq, gt, lt;
    
    comparator stage0(1, 0, 0, a[3], b[3], eq[0], gt[0], lt[0]);
    comparator stage1(eq[0], gt[0], lt[0], a[2], b[2], eq[1], gt[1], lt[1]);
    comparator stage2(eq[1], gt[1], lt[1], a[1], b[1], eq[2], gt[2], lt[2]);
    comparator stage3(eq[2], gt[2], lt[2], a[0], b[0], equal, greaterThan, lessThan);
endmodule
