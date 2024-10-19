module half_subtractor_dataflow(
    input a, b,
    output d, borrow
);
    assign d = a ^ b;    // XOR gate for difference
    assign borrow = ~a & b; // AND gate with inverted 'a' for borrow
endmodule