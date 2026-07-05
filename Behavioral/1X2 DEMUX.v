module Dem1_2(I,S,y1,y0);
  input I;
  input S;
  output reg y1,y0;
  always@(*)begin

    if(S==0)begin
      y0=I;
      y1=0;
    end
    
    else begin
      y1=I;
      y0=0;
    end

  end
endmodule
