module fulladder(s,ca,a,b,c);// fulladder is our module name
  input a,b,c;//this are inputs
  output s,ca;
  wire d,e,f;
  xor(s,a,b,c);
  and(d,a,b);
  and(e,b,c);
  and(f,c,a);
  or(ca,d,e,f);
endmodule