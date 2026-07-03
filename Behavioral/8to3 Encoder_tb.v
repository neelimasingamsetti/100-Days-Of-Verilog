module Enc8_3tb;
  reg [7:0] Y;
  wire a2,a1,a0;
  Enc8_3 DUT (.a2(a2),.a1(a1),.a0(a0),.Y(Y));
  initial begin
    $monitor("a2=%b,a1=%b,a0=%b,Y=%b",a2,a1,a0,Y);
    Y=8'b00000000; #10;
    Y=8'b00000001; #10;
    Y=8'b00000010; #10;
    Y=8'b00000100; #10;
    Y=8'b00001000; #10;
    Y=8'b00010000; #10;
    Y=8'b00100000; #10;
    Y=8'b01000000; #10;
    Y=8'b10000000; #10;

    $finish;
  end
endmodule
    
