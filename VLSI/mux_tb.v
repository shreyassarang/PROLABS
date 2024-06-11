`timescale 1ns / 1ps
module mux41_tb();
reg [1:0]s; reg [1:0]d1; reg [1:0] d2; reg [1:0]d3; reg [1:0] d4;
wire [1:0] y;
mux41 dut(y, s, d1, d2, d3, d4);
initial 
begin
    s = 2'b0;
    d1 = 2'b00;
    d2 = 2'b01;
    d3 = 2'b10;
    d4 = 2'b11;
end 
always #5 s = s + 1'b1;
endmodule