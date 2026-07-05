module Dem1_2tb;
  reg I;
  reg S;
  wire y1,y0;
  Dem1_2 DUT (.I(I),.S(S),.y1(y1),.y0(y0));
  initial begin
    $monitor("I=%b,S=%b,y1=%b,y0=%b",I,S,y1,y0);

    I=0;S=0; #5;
    I=0;S=1; #5;
    I=1;S=0; #5;
    I=1;S=1; #5;
    $finish;

  end
endmodule
