// Testbench for all three implementations
module testbench;
    reg a, b, bin;
    wire diff_df, borrow_df;
    wire diff_bh, borrow_bh;
    wire diff_gl, borrow_gl;

    // Instantiate all three modules
    full_subtractor_dataflow fs_df(a, b, bin, diff_df, borrow_df);
    full_subtractor_behavioral fs_bh(a, b, bin, diff_bh, borrow_bh);
    full_subtractor_gatelevel fs_gl(a, b, bin, diff_gl, borrow_gl);

    initial begin
        
        // Test all input combinations
        for (int i = 0; i < 8; i++) begin
            {a, b, bin} = i;// i value is directly converted into binary
            #10;
            $display("%b %b  %b  |   %b      %b    |   %b      %b    |   %b      %b", 
                     a, b, bin, diff_df, borrow_df, diff_bh, borrow_bh, diff_gl, borrow_gl);
        end
    end
endmodule