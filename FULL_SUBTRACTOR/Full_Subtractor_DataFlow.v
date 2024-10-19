module full_subtractor_dataflow(
    input a, b, c,
    output d, borrow
);
    assign d = a ^ b ^ c;
    assign borrow = (~a & b) | (~a & c) | (b & c);
endmodule