`timescale 1ns / 1ps
module all_gates(
    input a_in,
    input b_in,
    output y_not,
    output y_and,
    output y_or,
    output y_xor,
    output y_nand,
    output y_nor,
    output y_xnor
    );
    assign y_not = ~a_in;
    assign y_and = a_in & b_in;
    assign y_or = a_in | b_in;
    assign y_xor = a_in ^ b_in;
    assign y_nand = ~a_in | ~b_in;
    assign y_nor = ~a_in & ~b_in;
    assign y_xnor = a_in ~^ b_in;
endmodule