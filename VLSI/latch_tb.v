`timescale 1ns / 1ps
module latch_tb();
reg din, clk;
wire dout;
latch dut(dout, din, clk);
initial
begin
    din = 1'd0;
    clk = 1'd0;
end
always #5 clk = ~clk;
always #10 din = ~din;
endmodule