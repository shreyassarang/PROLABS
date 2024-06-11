`timescale 1ns / 1ps
module latch(dout, din, clk);
output reg dout;
input din, clk;
always@(posedge clk or din)
    begin
    if (din)
        dout <= din;
    else
        dout <= 1'd0;
    end
endmodule