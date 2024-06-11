`timescale 1ns / 1ps
module mux41(
    output reg [1:0] y,
    input [1:0] s, d1, d2, d3, d4);
    always@(s)
    begin
        case(s)
            2'd0: y = d1;
            2'd1: y = d2;
            2'd2: y = d3;
            2'd3: y = d4;
        default: y = 2'd0;
        endcase
    end
endmodule