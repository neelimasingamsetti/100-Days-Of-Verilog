module reg16(i,q,clk,rst,en);
  input [15:0] i;
  input clk;
  input rst;
  input en;
  output reg [15:0] q;
  always@(posedge clk or posedge rst)begin
    if(rst)
      q<=0;
    else if(en)
      q<=i;
  end
endmodule
    
