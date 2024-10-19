module full_subtractor_gatelevel(
    input a, b, bin,
    output diff, borrow
);
    wire w1, w2, w3, w4;
    
    xor x1(w1, a, b);
    xor x2(diff, w1, bin);
    
    not n1(not_a, a);
    and a1(w2, not_a, b);
    and a2(w3, not_a, bin);
    and a3(w4, b, bin);
    
    or o1(borrow, w2, w3, w4);
endmodule