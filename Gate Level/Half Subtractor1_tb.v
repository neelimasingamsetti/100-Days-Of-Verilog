module halfsubtractor1_tb;
  reg a,b;
  wire diff,borrow;
  halfsubtractor1 UUT (.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial 
    begin
      #5 a=0;b=0;
      $display("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
       #5 a=0;b=1;
      $display("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
      #5 a=1;b=0;
      $display("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
      #5 a=1;b=1;
      $display("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
      $finish;
    end
endmodule
      
      
