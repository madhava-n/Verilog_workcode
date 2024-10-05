module halfadder(A,B,sum,carry);
  input A,B;
  output sum,carry;
  and(carry,A,B);
  xor(sum,A,B);
endmodule