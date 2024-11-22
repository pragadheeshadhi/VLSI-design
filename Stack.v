module stack(in,push,pop,sp,clk,out);
  input clk,push,pop;
  input [7:0]in;
  output reg [9:0]sp;
  output reg[7:0]out;
  reg [7:0]mem[1023:0];
initial
  begin 
    out=8'b0;
    sp = 10'b0; 
  end  
always@(posedge clk)
begin
  if(push)
    begin
      mem[sp]=in;
      sp =sp+1;
    end
  else if(pop)
    begin 
      out = mem[sp];
      sp = sp-1;
    end
end
endmodule
