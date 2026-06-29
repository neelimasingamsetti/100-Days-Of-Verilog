module Dec3_8tb;
  reg a,b,c;
  wire [7:0] Y;
  Dec3_8 DUT (.a(a),.b(b),.c(c),.Y(Y));
  initial begin
    $monitor("a=%b,b=%b,c=%b,Y=%b",a,b,c,Y);
    
    a=0;b=0;c=0; #10;
    a=0;b=0;c=1; #10;
    a=0;b=1;c=0; #10;
    a=0;b=1;c=1; #10;
    a=1;b=0;c=0; #10;
    a=1;b=0;c=1; #10;
    a=1;b=1;c=0; #10;
    a=1;b=1;c=1; #10;

    $finish;
  end
endmodule
