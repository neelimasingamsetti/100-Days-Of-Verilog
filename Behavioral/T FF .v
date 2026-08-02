module t(t,clk,q,q_bar);
  input t,clk;
  output reg q;
  output q_bar;
  always@(posedge clk)begin
    case(t)
      1'b0:q<=q;
      1'b1:q<=~q;
    endcase
  end
  assign q_bar = ~q;
endmodule
