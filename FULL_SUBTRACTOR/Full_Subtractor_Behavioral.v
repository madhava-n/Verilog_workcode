module full_subtractor_behavioral(
    input a, b, c,
    output reg d, borrow
);
    always @(*) begin
        d = a ^ b ^ c;
        borrow = (~a & b) | (~a & c) | (b & c);
    end
endmodule