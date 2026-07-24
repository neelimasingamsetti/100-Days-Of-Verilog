module d_ff(d,clk,en,q,q_bar);
  input d,clk,en;
  output reg q;
  output q_bar;
  always @(posedge clk)
    begin
      if(en)
        q<=d;
      else
        q;
    end
  assign q_bar=~q;
endmodule
