`timescale 1ns / 1ps
module all_gatestb();
reg a_in, b_in;
wire y_not, y_and, y_or, y_xor, y_nand, y_nor, y_xnor;
all_gates dut(a_in, b_in,y_not, y_and, y_or, y_xor, y_nand, y_nor, y_xnor);
initial 
begin
a_in = 1'B0;
b_in = 1'B0;
end
always #5 b_in = ~b_in;
always #10 a_in = ~a_in;
endmodule