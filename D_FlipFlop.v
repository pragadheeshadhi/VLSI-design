module DFlipFlop(D,clk,reset,Q,Qn);
input D; 
input clk; 
input reset;
output reg Q,Qn;
always @(posedge clk) 
begin
 if(reset==1)
   begin
  Q <= 0;
  Qn <= 1; 
end
 else
   begin
  Q <= D; 
  Qn <= (~D);
end
end 
endmodule
