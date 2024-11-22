module daddaa(a,b,p);
  input [3:0]a,b;
  output [8:1]p;
  wire [13:1]d;
  wire[10:1]fs1;
  or(C,A,B);
  wire [15:0]x;
 
  assign p[1]=a[0]&b[0];
 
  assign x[0]=a[1]&b[0];
  assign x[1]=a[0]&b[1];
  fa f1(x[0],x[1],1'b0,fs1[1],d[1]);
 
  assign x[2]=a[2]&b[0];
  assign x[3]=a[1]&b[1];
  assign x[4]=a[0]&b[2];
 
  fa f2(x[2],x[3],x[4],fs1[2],d[2]);
 
  assign x[5]=a[2]&b[1];
  assign x[6]=a[1]&b[2];
  assign x[7]=a[0]&b[3];
  fa f3(x[5],x[6],x[7],fs1[3],d[3]);
  assign x[8]=a[3]&b[1];
  assign x[9]=a[2]&b[2];
  assign x[10]=a[1]&b[3];
  fa f4(x[8],x[9],x[10],fs1[4],d[4]);
  assign x[11]=a[3]&b[2];
  assign x[12]=a[2]&b[3];
  fa f5(x[11],x[12],1'b0,fs1[5],d[5]);
  assign x[13]=a[3]&b[3];
   
   
    fa f6(d[1],fs1[2],1'b0,p[3],d[6]);
    assign x[14]=a[3]&b[0];
    fa f7(d[2],fs1[3],x[14],fs1[7],d[7]);
    fa f8(d[3],fs1[4],1'b0,fs1[8],d[8]);
    fa f9(d[4],fs1[5],1'b0,fs1[9],d[9]);
    fa f10(d[5],x[13],1'b0,fs1[10],d[10]);
    fa f11(d[6],fs1[7],1'b0,p[4],d[11]);
    fa f12(d[11],d[7],fs1[8],p[5],d[12]);
   
    fa f13(d[12],fs1[9],d[8],p[6],d[13]);
    fa f14(d[13],d[9],fs1[10],p[7],x[15]);
   
    assign p[8]=d[10];
    //assign p[3]=fs[6];
    assign p[2]=fs1[1];
   
endmodule
 

 
  module fa(a,b,c,s,ca);
    input a,b,c;
    output s,ca;
    assign s=a^b^c;
    assign ca=(a&b)|(b&c)|(a&c);
  endmodule
