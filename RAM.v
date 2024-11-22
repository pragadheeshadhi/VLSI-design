module ram(in,we,add,clk,out);
  input clk,we;
  input [7:0]in;
  input [9:0]add;
  output reg[7:0]out;
  reg [7:0]mem[1023:0];
  initial
  out =8'b0;
  always@(posedge clk)
  begin
    if(we)
      begin
        mem[add]=in;
      end
      out=mem[add];
    end
  endmodule
