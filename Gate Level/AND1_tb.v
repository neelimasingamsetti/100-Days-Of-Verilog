module and1_tb;
  reg a,b;
  wire y;
  and1 DUT(.a(a),.b(b),.y(y));
  initial begin
    a=0;b=0; #5;
    #1 $display("a=%b,b=%b,y=%b",a,b,y);
    a=0;b=1; #5;
    #1 $display("a=%b,b=%b,y=%b",a,b,y);
    a=1;b=0; #5;
    #1 $display("a=%b,b=%b,y=%b",a,b,y);
    a=1;b=1; #5;
    #1 $display("a=%b,b=%b,y=%b",a,b,y);
    $finish;
  end
endmodule
    
    
