module modten1(clk,rst,vcc,q,qb,m);
  input clk,rst,vcc,m;
  inout [4:1]q;
  inout [4:1]qb;
  div k(clk,rst,qx);
  assign clkd=qx;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;
  tff ff1(clkd,rst,vcc,q[1],qb[1]);
  assign w1=(q[3]&qb[2]&qb[1]&~m);
  assign w2=(q[4]&qb[2]&qb[1]&~m);
  assign w3=(q[2]&qb[1]&~m);
  assign w4=(q[1]&qb[4]&m);
  assign w5=(q[3]&qb[2]&qb[1]&~m);
  assign w6=(q[4]&qb[2]&qb[1]&~m);
  assign w7=(q[2]&q[1]&m);
  assign w8=(qb[3]&qb[2]&qb[1]&~m);
  assign w9=(q[4]&qb[3]&q[1]&m);
  assign w10=(q[3]&q[2]&q[1]&m);
  assign w11=w1|w2|w3|w4;
  assign w12=w5|w6|w7;
  assign w13=w8|w9|w10;
  tff ff2(clkd,rst,w11,q[2],qb[2]);
  tff ff3(clkd,rst,w12,q[3],qb[3]);
  tff ff4(clkd,rst,w13,q[4],qb[4]);
endmodule
module tff(clk,rst,t,q,qb);
  input t,clk,rst;
  output q,qb;
  reg q,qb;
  always @(posedge clk)
  begin
    if(rst == 1)
      begin
         q=0;
         qb=1;
       end
    else
        if(t==1)
          begin
            q=~q;
            qb=~qb;
          end
        end
    endmodule
module div(clk,rst,q);
  input clk,rst;
  output q;
  reg [27:0]sig;
  assign LED=q;
always @(posedge clk)
begin
  if(rst==1)
    sig=28'b0;
  else if (rst==0)
    sig=sig+1;
  end
  assign q=sig[24];
endmodule
