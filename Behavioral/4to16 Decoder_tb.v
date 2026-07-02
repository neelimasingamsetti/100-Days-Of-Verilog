module Dec4_16tb;
  reg a,b,c,d;
  wire [15:0] Y;
  Dec4_16 DUT (.a(a),.b(b),.c(c),.d(d),.Y(Y));
  initial begin
    $monitor("a=%b,b=%b,c=%b,d=%b,Y=%b",a,b,c,d,Y);
    
    a=0;b=0;c=0;d=0; #10;
    a=0;b=0;c=0;d=1; #10;
    a=0;b=0;c=1;d=0; #10;
    a=0;b=0;c=1;d=1; #10;
    a=0;b=1;c=0;d=0; #10;
    a=0;b=1;c=0;d=1; #10;
    a=0;b=1;c=1;d=0; #10;
    a=0;b=1;c=1;d=1; #10;
    a=1;b=0;c=0;d=0; #10;
    a=1;b=0;c=0;d=1; #10;
    a=1;b=0;c=1;d=0; #10;
    a=1;b=0;c=1;d=1; #10;
    a=1;b=1;c=0;d=0; #10;
    a=1;b=1;c=0;d=1; #10;
    a=1;b=1;c=1;d=0; #10;
    a=1;b=1;c=1;d=1; #10;

    $finish;
  end
endmodule
    
    
