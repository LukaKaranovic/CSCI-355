`timescale 1ns / 1ps


module nBitAdder(carryin, x, y, s, carryout);
    // Define parameter, input and outputs.
    parameter n = 32;
    input carryin;
    input [n-1:0] x, y;
    
    output [n-1:0] s; 
    output carryout;
    
    wire[n:0] c;
    genvar i;
    
    // Set up variables for generate for loop
    assign c[0] = carryin;
    assign carryout = c[n];
    
    generate
        for(i = 0; i <= n-1; i = i + 1)
        begin: addbit
            fullAdder stage(c[i], x[i], y[i], s[i], c[i+1]);
        end
    endgenerate
    

endmodule