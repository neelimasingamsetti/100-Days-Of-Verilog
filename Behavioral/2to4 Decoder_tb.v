module Dec2_4tb;
  reg a,b;
  wire y0,y1,y2,y3;
  Dec2_4 DUT (.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
    $monitor("a=%b,b=%b,y0=%b,y1=%b,y2=%b,y3=%b",a,b,y0,y1,y2,y3);
    a=0;b=0; #5;
    a=0;b=1; #5;
    a=1;b=0; #5;
    a=1;b=1; #5;
    $finish;
  end
endmodule
