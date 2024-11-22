//equation: x4+x3+1
module lfsr(
  input clk,rst,
  output  reg[3:0]lfsr_o
  );
  always@(posedge clk,posedge rst)
    if(rst)
      lfsr_o <= 4'hf;
    else
      lfsr_o <= {lfsr_o[2:0],(lfsr_o[3] ^ lfsr_o[2])};
endmodule
