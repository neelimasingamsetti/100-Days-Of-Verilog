module mux2x1_tb;
  reg [1:0] I;
  reg S;
  wire Y;
  mux2x1 DUT (.I(I),.S(S),.Y(Y));
  initial begin
    $monitor("I=%b,S=%b,Y=%b",I,S,Y);
    I=2'b01; S=1'b0; #5;
    I=2'b10; S=1'b1; #5;
    $finish;
  end
endmodule
