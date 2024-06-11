module ff(
input clk,rst,din,en,
output reg dout
    );
   
    always@ (posedge clk or negedge rst)
    begin
    if(!rst)
       dout<=1'b0;
    else if(en)
       dout<=din;
    end
endmodule