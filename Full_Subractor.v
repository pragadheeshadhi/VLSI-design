//Full Subractor
module full_sub(diff,borrow,a,b,cin);
  input a,b,cin;
  output diff,borrow;
  assign diff = ((a ^ b) ^ (cin));
  assign borrow = (((~a)&(~b))&cin) || (((~a)&(b))&(~cin)) || (((~a)&(b))& cin) || ((a&b)&cin);
endmodule
