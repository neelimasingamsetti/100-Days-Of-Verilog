module mux8x1_tb;
  reg [7:0] I;
  reg [2:0] S;
  wire Y;
  mux8x1 UUT (.I(I),.S(S),.Y(Y));
  initial begin
    $monitor("I=%b,S=%b,Y=%b",I,S,Y);

    I=8'b00000001; S=3'b000; #5;
    I=8'b00000010; S=3'b001; #5;
    I=8'b00000100; S=3'b010; #5;
    I=8'b00001000; S=3'b011; #5;
    I=8'b00010000; S=3'b100; #5;
    I=8'b00100000; S=3'b101; #5;
    I=8'b01000000; S=3'b110; #5;
    I=8'b10000000; S=3'b111; #5;
    $finish;
  end
endmodule
