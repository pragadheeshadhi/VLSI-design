module tff ( input t, input clk, input reset, output reg q);
always @ (posedge clk)
begin
if(reset == 1)
  begin
  q <= 0;
end
else 
   begin 
   if (t==0)
   q <= q;
 else 
     q <= ~q;
   end
    end  
endmodule
