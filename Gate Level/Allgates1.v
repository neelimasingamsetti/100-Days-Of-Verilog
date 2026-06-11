module allgates1(a,b,and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y);
  input a,b;
  output and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y;
  and (and_y,a,b);
  or (or_y,a,b);
  not (not_y,a);
  nand (nand_y,a,b);
  nor (nor_y,a,b);
  xor (xor_y,a,b);
  xnor (xnor_y,a,b);
endmodule
  
