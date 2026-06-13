module vector_and_tb;
  reg [3:0] a;
  reg [3:0] b;
  wire [3:0] y;
  vector_and UUT (.a(a),.b(b),.y(y));
  initial begin
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=4'b0000;b=4'b0000; #5;
    a=4'b0000;b=4'b0001; #5;
    a=4'b0001;b=4'b0000; #5;
    a=4'b0001;b=4'b0001; #5;
    $finish;
  end
endmodule
    
