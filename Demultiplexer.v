module and_gate(output b,input c,d,e,f);
  assign b = c & d & e & f;
endmodule
module demux1_8(output y0,y1,y2,y3,y4,y5,y6,y7,input a,s0,s1,s2);
  and_gate l1(y0,a,~s0,~s1,~s2);
  and_gate l2(y1,a,~s0,~s1,s2);
  and_gate l3(y2,a,~s0,s1,~s2);
  and_gate l4(y3,a,~s0,s1,s2);
  and_gate l5(y4,a,s0,~s1,~s2);
  and_gate l6(y5,a,s0,~s1,s2);
  and_gate l7(y6,a,s0,s1,~s2);
  and_gate l8(y7,a,s0,s1,s2);
endmodule
