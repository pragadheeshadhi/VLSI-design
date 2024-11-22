//Mux Structural
module and_3_input(out,a,b,c);
  input a,b,c;
  output out;
  assign out=a&b&c;
endmodule
module or_input4(y,a,b,c,d);
  input a,b,c,d;
  output y;
  assign y=a|b|c|d;
endmodule
module MuxStructural4(y,s1,s0,i0,i1,i2,i3);
  input i0,i1,i2,i3,s1,s0;
  output y;
  wire w1,w2,w3,w4;
  andgate l1(w1,~s1,~s0,i0);
  and_3_input l2(w2,~s1,s0,i1);
  and_3_input l3(w3,s1,~s0,i2);
  and_3_input l4(w4,s1,s0,i3);
  or_input4 l5(y,w1,w2,w3,w4);
endmodule
