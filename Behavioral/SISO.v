module siso(clk,si,rst,so,q);
  input clk;
  input si;
  input rst;
  output so;
  output reg[3:0]q;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=4'b0000;
    else
      q<={q[2:0],si};
  end
  assign so=q[3];
endmodule
