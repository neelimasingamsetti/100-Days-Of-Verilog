module mux2x1(I,S,Y);
  input [1:0] I;
  input S;
  output reg Y;
  always@(*)begin
    if(S==0)
      Y=I[0];
    else
      Y=I[1];
  end
    endmodule
