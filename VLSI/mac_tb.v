module mac_tb();
reg clk,rst;
reg [11:0]  in_1,in_2;
wire [24:0] out;
mac tb(in_1,in_2,clk,rst,out);
initial
begin
clk=1'b0;
rst=1'b1;
in_1=11'd0;
in_2=11'd0;
end
always #5 clk=~clk;
always #30 in_1=in_1+1'b1;
always #(2**12*30) in_2=in_2+1'b1;
always #1555 rst=~rst;
endmodule