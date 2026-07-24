module d_ff(d,clk,q,q_bar);
  input d,clk;
  output reg q;
  output q_bar;
  always@(posedge clk)
    begin
      q<=d;
    end
  assign q_bar=~q;
endmodule  
