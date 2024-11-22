module Queue(in,enqueue,dequeue,Fp,Bp,clk,out);
  input clk,enqueue,dequeue;
  input [7:0]in;
  output reg [9:0]Fp,Bp;
  output reg [7:0]out;
  reg [7:0]mem[1023:0];
initial
  begin 
    out=8'b0;
    Fp = 10'b0; 
    Bp = 10'b0; 
  end 
always@(posedge clk)
begin
  if(enqueue)
    begin
      mem[Bp]=in;
      Bp = Bp+1;
    end
  else if(dequeue)
    begin 
      out = mem[Fp];
      Fp = Fp+1;
    end
end
endmodule
