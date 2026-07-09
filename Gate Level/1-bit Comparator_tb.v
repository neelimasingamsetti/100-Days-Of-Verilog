module comp_tb;
  reg a,b;
  wire x,y,z;
  comp DUT (.a(a),.b(b),.x(x),.y(y),.z(z));
  initial begin
    $monitor("a=%b,b=%b,x=%b,y=%b,z=%b",a,b,x,y,z);
    
    a=0;b=0; #5;
    a=0;b=1; #5;
    a=1;b=0; #5;
    a=1;b=1; #5;

    $finish;
  end
endmodule
