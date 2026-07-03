module Dec3_8tb;
  reg a,b,c;
  wire [7:0] Y;
  Dec3_8 DUT (.a(a),.b(b),.c(c),.Y(Y));
  initial begin
    $monitor("a=%b,b=%b,c=%b,Y=%b",a,b,c,Y);
    {a,b,c}=3'b000;
    
    repeat(7) begin
      #5 {a,b,c}={a,b,c}+1;
    end
  end
endmodule
      
    
