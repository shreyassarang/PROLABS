`timescale 1ns / 1ps
module multiplier(out, ain, bin);
parameter width = 12;
input [width-1:0] ain, bin;
output [2*width-1 :0] out;
assign out = ain * bin;
endmodule