module testbench;
    reg a, b;
    wire d, borrow;

    // Instantiate the half subtractor module
    half_subtractor_truth_table hs_tt(a, b, d, borrow);

    // Test all input combinations
    initial begin
        
        a = 0; b = 0; #10;
        $display("%b %b |  %b     %b", a, b, d, borrow);
        
        a = 0; b = 1; #10;
        $display("%b %b |  %b     %b", a, b, d, borrow);
        
        a = 1; b = 0; #10;
        $display("%b %b |  %b     %b", a, b, d, borrow);
        
        a = 1; b = 1; #10;
        $display("%b %b |  %b     %b", a, b, d, borrow);
    end
endmodule