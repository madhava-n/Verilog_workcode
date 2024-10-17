module fulladder( input a,input b,input C,output Sum,output Cout);
assign Sum = (a ^ b) ^ C;
assign Cout = (a & b) | (b & C) | (C & a);
endmodule