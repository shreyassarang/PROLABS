//Include Full Adder RTL File from github
`timescale 1ns / 1ps
module generic_adder(sum, carry, ain, bin, cin, c);
    //Adder for (width-1) bitadder 
    parameter width = 24;
    output [width -1:0] sum;
    output carry;
    input [width -1:0] ain, bin;
    input cin;
    output [width:0] c;
    genvar i;
        assign c[0] = cin;
        generate 
        for(i=0; i<width; i=i+1)
        begin: generic_adder
            full_adder dut(sum[i], c[i+1], ain[i], bin[i], c[i]);
        end
        assign carry = c[width];
        endgenerate
endmodule