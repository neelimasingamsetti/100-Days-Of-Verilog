module or1_tb;
  reg a,b;
  wire y;
  or1 UUT(.a(a),.b(b),.y(y));
  initial begin
    a=0;b=0;#5;
    $display("a=%b,b=%b,y=%b",a,b,y);
     a=0;b=1;#5;
    $display("a=%b,b=%b,y=%b",a,b,y);
     a=1;b=0;#5;
    $display("a=%b,b=%b,y=%b",a,b,y);
     a=1;b=1;#5;
    $display("a=%b,b=%b,y=%b",a,b,y);
    $finish;
  end
endmodule
