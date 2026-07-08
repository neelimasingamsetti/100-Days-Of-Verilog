module comp_tb;
  reg [1:0] a,b;
  wire x,y,z;
  integer i,j;
  comp DUT (.a(a),.b(b),.x(x),.y(y),.z(z));
  initial begin
    $monitor("a=%b,b=%b,x=%b,y=%b,z=%b",a,b,x,y,z);
    for(i=0;i<4;i=i+1)
      for(j=0;j<4;j=j+1)begin
        a=i;b=j;
        #5;
      end
  $finish;
  end
endmodule
