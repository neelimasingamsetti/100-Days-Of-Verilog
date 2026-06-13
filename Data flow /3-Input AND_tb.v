module and_input3_tb;
  reg a,b,c;
  wire y;
  and_input3 UUT (.a(a),.b(b),.c(c),.y(y));
  initial begin
    $monitor("a=%b,b=%b,c=%b,y=%b",a,b,c,y);
    a=0;b=0;c=0; #5;
    a=0;b=0;c=1; #5;
    a=0;b=1;c=0; #5;
    a=0;b=1;c=1; #5;
    a=1;b=0;c=0; #5;
    a=1;b=0;c=1; #5;
    a=1;b=1;c=0; #5;
    a=1;b=1;c=1; #5;
    $finish;
  end
endmodule
    
