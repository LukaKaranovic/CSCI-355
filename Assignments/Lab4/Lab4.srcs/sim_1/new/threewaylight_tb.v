`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2025 04:52:39 PM
// Design Name: 
// Module Name: threewaylight_tb
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


module threewaylight_tb();
    
    reg a, b, c;
    wire f;
    ThreeWayLight_structural vt(a, b, c, f);
    ThreeWayLight_behavioural ut(a, b, c, f);
    
    initial begin
        {a,b,c} = 3'd0; #20;
        {a,b,c} = 3'd1; #20;
        {a,b,c} = 3'd2; #20;                    
        {a,b,c} = 3'd3; #20;
        {a,b,c} = 3'd4; #20;
        {a,b,c} = 3'd5; #20;
        {a,b,c} = 3'd6; #20;
        {a,b,c} = 3'd7; #20;
        $display("Done");
        $finish;
    end

endmodule

