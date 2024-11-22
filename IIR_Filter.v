module IIR(x,clk3,rst,y);
  input [7:0]x;
  input clk3,rst;
  output [15:0]y;
  wire [15:0]w1,w2,w3,w4,w5,w8,w9,w10;
  wire [7:0]w6,w7;
  parameter b0=8'b00000010;
  parameter b1=8'b00000100;
  parameter b2=8'b00001000;
  assign w1=b0*x;
  pipo i6(x,clk3,rst,w6);
  assign w2=w6*b1;
  pipo i7(w6,clk3,rst,w7);
  assign w3=w7*b2;
  assign w4=w1+w2+w3;
  pipo i8(w4,clk3,rst,w5);
  assign w8=w5>>1;
  pipo i9(w5,clk3,rst,w9);
  assign w10=w9>>2;
  assign y=w4-w8-w10;
endmodule
module pipo(D,clk1,rst,Q);
  input [15:0]D,clk1,rst;
  output [15:0]Q;
  dff i1(clk1,D[0],rst,Q[0]);
  dff i2(clk1,D[1],rst,Q[1]);
  dff i3(clk1,D[2],rst,Q[2]);
  dff i4(clk1,D[3],rst,Q[3]);
  dff i5(clk1,D[4],rst,Q[4]);
  dff i6(clk1,D[5],rst,Q[5]);
  dff i7(clk1,D[6],rst,Q[6]);
  dff i8(clk1,D[7],rst,Q[7]);
  dff i9(clk1,D[8],rst,Q[8]);
  dff i10(clk1,D[9],rst,Q[9]);
  dff i11(clk1,D[10],rst,Q[10]);
  dff i12(clk1,D[11],rst,Q[11]);
  dff i13(clk1,D[12],rst,Q[12]);
  dff i14(clk1,D[13],rst,Q[13]);
  dff i15(clk1,D[14],rst,Q[14]);
  dff i16(clk1,D[15],rst,Q[15]);
endmodule

module dff(clk,d,clr,q);
  input d,clk,clr;
  output q;
  reg q;
  always@(posedge clk)
  begin
    if(clr==1)
      q=0;
    else
      q=d;
    end 
  endmodule
