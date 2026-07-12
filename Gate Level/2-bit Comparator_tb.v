module comp_tb;
  reg [1:0]a,b;
  wire x,y,z;
  comp DUT (.a(a),.b(b),.x(x),.y(y),.z(z));
  initial begin
    $monitor("a=%b,b=%b,x=%b,y=%b,z=%b",a,b,x,y,z);
    a=2'b00; b=2'b00; #5;
    a=2'b00; b=2'b01; #5;
    a=2'b01; b=2'b00; #5;
    a=2'b01; b=2'b01; #5;
    a=2'b10; b=2'b01; #5;
    a=2'b01; b=2'b10; #5;
    a=2'b11; b=2'b11; #5;
    $finish;

  end
endmodule
