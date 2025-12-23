`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2025 11:44:01 AM
// Design Name: 
// Module Name: ThreeWayLight_structural
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


module ThreeWayLight_structural(x1, x2, x3, light);
    input x1, x2, x3;
    output light;

    wire w1, w2, w3, w4, n1, n2, n3;
    
    not(n1, x1);
    not(n2, x2);
    not(n3, x3);
    
    or(w1, n1, n2, x3);
    or(w2, n1, x2, n3);
    or(w3, x1, n2, n3);
    or(w4, x1, x2, x3);
    
    and(light, w1, w2, w3, w4);
    
endmodule
