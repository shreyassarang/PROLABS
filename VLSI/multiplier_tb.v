`timescale 1ns / 1ps
module multiplier_tb();
parameter width = 12;
reg [width-1 : 0] ain, bin;
wire[2*width-1 : 0] out;
multiplier dut(out, ain, bin);
initial
 begin
   ain = 12'd0;
   bin = 12'd0;
end
   
always #5 ain = ain + 1'b1;
always #1 bin = bin + 1'b1;
endmodule