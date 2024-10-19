module half_subtractor_truth_table(
    input a, b,
    output reg d, borrow
);
    // Truth table implementation using a case statement
    always @(*) begin
        case({a, b})
            2'b00: {borrow, d} = 2'b00; // 0 - 0 = 0, no borrow
            2'b01: {borrow, d} = 2'b11; // 0 - 1 = 1, borrow
            2'b10: {borrow, d} = 2'b01; // 1 - 0 = 1, no borrow
            2'b11: {borrow, d} = 2'b00; // 1 - 1 = 0, no borrow
            default: {borrow, d} = 2'bxx; // For completeness, though not needed here
        endcase
    end
endmodule