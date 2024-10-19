module half_subtractor_gatelevel(
    input a, b,
    output d, borrow
);
    xor x1(d, a, b);    // XOR gate for difference
    not n1(not_a, a);      // NOT gate to invert 'a'
    and a1(borrow, not_a, b); // AND gate for borrow
endmodule