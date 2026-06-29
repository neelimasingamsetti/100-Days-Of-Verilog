module Dec4_16tb;
  reg a,b,c,d;
  wire [15:0] Y;
  Dec4_16 DUT (.a(a),.b(b),.c(c),.d(d),.Y(Y));
  initial begin
    $monitor("a=%b,b=%b,c=%b,d=%b,Y=%b",a,b,c,d,Y);
  
    {a,b,c,d}=4'b0000;
    repeat(16)begin
    #10 {a,b,c,d}={a,b,c,d}+1;
    end
    #5 $finish;
  
  end
endmodule
    
