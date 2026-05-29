module Allgates1_tb;
  reg a,b;
  wire and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y;
  Allgates1 DUT (.a(a),.b(b),.and_y(and_y),.or_y(or_y),.not_y(not_y),.nand_y(nand_y),.nor_y(nor_y),.xor_y(xor_y),.xnor_y(xnor_y));
  initial begin
    $monitor("a=%b,b=%b,and_y=%b,or_y=%b,not_y=%b,nand_y=%b,nor_y=%b,xor_y=%b,xnor_y=%b",a,b,and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y);
    a=0;b=0;#5;
    a=0;b=1;#5;
    a=1;b=0;#5;
    a=1;b=1;#5;
    $finish;
  end
endmodule
    
