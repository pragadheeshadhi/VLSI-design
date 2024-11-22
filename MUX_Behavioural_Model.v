//MUX behavioural model
module mux4x1(i0,i1,i2,i3,s0,s1,Y);
  input i0,i1,i2,i3,s0,s1;
  output Y;
  reg Y;
  always@(i0,i1,i2,i3,s0,s1)
  begin
  if(s0==0&s1==0)
    Y=i0;
  else if(s0==0&s1==1)
    Y=i1;
  else if(s0==1&s1==0)
    Y=i2;
  else if(s0==1&s1==1)
    Y=i3;
  end
endmodule
