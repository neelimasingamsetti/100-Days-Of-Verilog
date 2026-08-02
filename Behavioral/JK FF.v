module jk(j,k,q,q_bar,clk);
  input wire j;
  input wire k;
  input wire clk;
  output reg q;
  output wire q_bar;
  
  always@(posedge clk)begin
    if(j==0 && k==0)
      q <= q;
    else if(j==0 && k==1)
      q <= j;
    else if(j==1 && k==0)
      q <= j;
    else
      q <= ~q;
  end
  assign q_bar=~q;
endmodule
      
    
