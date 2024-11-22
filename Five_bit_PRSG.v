
5 bit PRSG:

module PRSG_5bit(
    input wire clk,
    input wire rst,
    output reg [4:0] prbs_out
);

reg [4:0] prbs_reg;

always @(posedge clk or posedge rst)
begin
    if (rst)
        prbs_reg <= 5'b1
    else begin
        prbs_reg[0] <= prbs_reg[4] ^ prbs_reg[3]; 
        prbs_reg[1] <= prbs_reg[0];
        prbs_reg[2] <= prbs_reg[1];
        prbs_reg[3] <= prbs_reg[2];
        prbs_reg[4] <= prbs_reg[3];
    end
    prbs_out <= prbs_reg;
end

endmodule
