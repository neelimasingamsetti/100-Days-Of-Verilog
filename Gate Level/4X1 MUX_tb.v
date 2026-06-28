module mux4x1_tb;
  reg [3:0] I;
  reg [1:0] S;
  wire Y;
  mux4x1 DUT (.I(I),.S(S),.Y(Y));
  initial begin
    $monitor("I=%b,S=%b,Y=%b",I,S,Y);

    I=4'b0001; S=2'b00; #5;
    I=4'b0010; S=2'b01; #5;
    I=4'b0100; S=2'b10; #5;
    I=4'b1000; S=2'b11; #5;
    $finish;
  end
endmodule
        
