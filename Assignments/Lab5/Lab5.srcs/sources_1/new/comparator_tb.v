`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2025 06:20:49 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
    reg a, b, gt_in, eq_in, lt_in;
    wire eq, gt, lt;

    comparator ut(eq_in, gt_in, lt_in, a, b, eq, gt, lt);
    
    initial begin
        eq_in = 1;
        lt_in = 0;
        gt_in = 0;
        
        a = 0;
        b = 0;
        #10;       
        a = 0;
        b = 1;
        #10;        
        a = 1;
        b = 0;  
        #10;      
        a = 1;
        b = 1; 
        #10;
        
        eq_in = 0;
        gt_in = 1;
        
        a = 0;
        b = 0;
        #10;       
        a = 0;
        b = 1;
        #10;        
        a = 1;
        b = 0;  
        #10;      
        a = 1;
        b = 1; 
        #10;
        
        gt_in = 0;
        lt_in = 1;
        
        a = 0;
        b = 0;
        #10;       
        a = 0;
        b = 1;
        #10;        
        a = 1;
        b = 0;  
        #10;      
        a = 1;
        b = 1; 
        #10;
        
        $display("Done.");
        $finish;
    end

endmodule
