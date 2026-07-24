module d_ff(d,clk,rst,q,q_bar);
  input d,clk,rst;
  output reg q;
  output q_bar;
  always @(posedge clk)
    begin
      if(rst)
        q<=0;
      else
        q<=d;
    end
  assign q_bar=~q;
  endmodule     
