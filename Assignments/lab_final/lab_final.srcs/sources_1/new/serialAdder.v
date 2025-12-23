`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 02:56:10 PM
// Design Name: 
// Module Name: serialAdder
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

module shiftReg #(parameter n = 8)
(
    input Clk,                  // Pos-edge clock
    input wire E,               // Enable signal
    input wire L,               // Load
    input wire [n-1:0] pdata,   // Parallel data
    input wire w,               // Serial data
    output reg [n-1:0] Y        // Output    
);
    integer i;
    always @(posedge Clk) begin
        if (E) begin
            if (L) begin // Parallel load
                Y <= pdata;
            end
            else begin // Serial load
                for (i = 0; i < n-1; i = i+1) begin
                    Y[i] <= Y[i+1];
                end
                Y[n-1] <= w;
            end
         end
         // Else: E is 0 and Y holds its value
    end
endmodule

module serialAdder(
    input Clk,                  // Pos-edge clock
    input wire Reset,           // Enable signal
    input wire [7:0] A,         // Input data A
    input wire [7:0] B,         // Input data B
    output wire [7:0] S         // Sum
);
    wire a, b;                      // Serial output from shift regs
    reg E;                          // Enable for sum shift reg
    reg s;                          // Serial sum input to sum shift reg
    reg Cin = 0, Cout;              // Current and next state for Adder FSM
    reg [3:0] counter = 4'b1000;    // Counter initialized to 1000 like diagram
    parameter G = 1'b0, H = 1'b1;   // Possible states (Cin and Cout values)
    
    shiftReg shiftA(Clk, 1, Reset, A, 0, a);
    shiftReg shiftB(Clk, 1, Reset, B, 0, b);
    shiftReg shiftS(Clk, E, Reset, 0, s, S);
    
    // Mealy Adder FSM
    always @(a, b, Cin) begin
        case (Cin)
            G: if (a ^ b) begin // ab = 10 or 01
                s = 1;  
                Cout = G;
            end
            else if (a && b) begin // ab = 11
                s = 0;
                Cout = H;
            end
            else begin // ab = 00
                s = 0;
                Cout = G;
            end
            H: if (a ^ b) begin // ab = 10 or 01
                s = 0;  
                Cout = H;
            end
            else if (a && b) begin // ab = 11
                s = 1;
                Cout = H;
            end
            else begin // ab = 00
                s = 1;
                Cout = G;
            end
            default: Cout = G; // If nothing, Cout is 0
            
        endcase
    end
    
    always @(posedge Clk, Reset) begin
        #10;
        Cin <= Cout;
        if (|counter) begin // If there is a 1 in counter
            E = 1;
            counter = counter + 1;

        end
        else begin // Low E signal after one n-bit addition.
            E = 0;
        end
        
        if (Reset) begin
            counter = 4'b1000;
            Cin <= 0;
        end
    end

endmodule
