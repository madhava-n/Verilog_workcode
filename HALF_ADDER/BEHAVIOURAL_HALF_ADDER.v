module halfadder(a,b,s,c);
  input a,b;
  output s,c;
  reg s,c;
  always@(a,b)
  begin
    case({a,b})
      2'b00:s=1'b0;c=1'b0;
      2'b01:s=1'b1;c=1'b0;
      2'b01:s=1'b1;c=1'b0;
      2'b11:s=1'b0;c=1'b1;
    endcase
  end
endmodule
  