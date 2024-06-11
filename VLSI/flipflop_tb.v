module ff_tb();
reg clk,rst,din,en;
wire dout;
 
ff tb(clk,rst,din,en,dout);
initial
begin
clk=1'b0;
rst=1'b0;
din=1'b0;
en=1'b0;
end
always #5 clk = ~clk;
always #7 rst = ~rst;
always #11 en = ~en;
always #17 din = ~din;
endmodule