`timescale 1ns / 1ps
module generic_adder_tb();
parameter width = 24;
wire [width -1:0] sum;
wire carry;
reg [width -1:0] ain, bin;
reg cin;
wire [width:0] c;
generic_adder dut(sum, carry, ain, bin, cin, c);
initial 
    begin
        ain = 24'd0;
        bin = 24'd0;
        cin = 1'd0;
    end
    
always #20 ain = ain + 1'b1;
always #10 bin = bin + 1'b1;
always #5 cin = cin + 1'b1;
endmodule