module sipo(clk,rst,si,q,po);
  input clk,rst,si;
  output reg [3:0]q;
  output [3:0]po;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        q<=4'b0000;
      else
        q<={q[2:0],si};
    end
  assign po = q[3:0];
endmodule
