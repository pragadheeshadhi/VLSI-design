//Half adder and Subtractor
module half(c,s,d,e,a,b);
  input a,b;
  output c,s,d,e;
  assign s = (a ^ b);
  assign c = a&b;
  assign d = a^b;
  assign e= ~a  & b ;
endmodule
