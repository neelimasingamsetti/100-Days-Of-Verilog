module reg4(i0,i1,i2,i3,clk,q0,q1,q2,q3);
  input i0,i1,i2,i3,clk;
  output reg q0,q1,q2,q3;
  always@(posedge clk)begin
      q0<=i0;
    q1<=i1;
    q2<=i2;
    q3<=i3;
  end
endmodule    
