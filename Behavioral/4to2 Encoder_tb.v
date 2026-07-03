module Enc4_2tb;
  reg [3:0] Y;
  wire a1,a0;
  Enc4_2 DUT (.Y(Y),.a1(a1),.a0(a0));
  initial begin
    $monitor("Y=%b,a1=%b,a0=%b",Y,a1,a0);
    Y=4'b0001; #5;
    Y=4'b0010; #5;
    Y=4'b0100; #5;
    Y=4'b1000; #5;
    $finish;
  end
endmodule
