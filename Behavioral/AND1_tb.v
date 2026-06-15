module and1_tb;
  reg a,b;
  wire y;
  and1 UUT (.a(a),.b(b),.y(y));
  initial begin
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=0;b=0; #5;
    a=0;b=1; #5;
    a=1;b=0; #5;
    a=1;b=1; #5;
    $finish;
  end
endmodule
