module Enc4_2tb;
  reg [3:0] Y;
  wire a1,a0;
  Enc4_2 DUT (.a1(a1),.a0(a0),.Y(Y));
  initial begin
    $monitor("a1=%b,a0=%b,Y=%b",a1,a0,Y);
    
    Y=4'b0001; #5;
    Y=4'b0010; #5;
    Y=4'b0100; #5;
    Y=4'b1000; #5;

    $finish;
  end
endmodule
    
    
