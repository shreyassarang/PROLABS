module controller_tb();
reg clk,reset;
wire x_ld,y_ld,sum_ld,sum_clr;
wire [1:0] mult_sel;
FIR_controller tb(clk,reset,x_ld,y_ld,sum_ld,sum_clr, mult_sel);
initial
    begin
    clk=1'b0;
    reset=1'b1;
    end
    always #5 clk = ~clk;
    always #500 reset = ~reset;
endmodule