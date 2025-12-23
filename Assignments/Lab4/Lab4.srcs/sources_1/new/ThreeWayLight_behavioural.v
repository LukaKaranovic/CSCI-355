`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2025 11:44:20 AM
// Design Name: 
// Module Name: ThreeWayLight_behavioural
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


module ThreeWayLight_behavioural(x1, x2, x3, light);

    input x1, x2, x3;
    output light;
    
    wire w1, w2, w3, w4, n1, n2, n3;
    
    assign n1 = ~x1;
    assign n2 = ~x2;
    assign n3 = ~x3;
    
    assign w1 = (x1 | n2 | n3);
    assign w2 = (n1 | x2 | n3);
    assign w3 = (n1 | n2 | x3);
    assign w4 = (x1 | x2 | x3);
    
    assign light = (w1 & w2 & w3 & w4);

endmodule
