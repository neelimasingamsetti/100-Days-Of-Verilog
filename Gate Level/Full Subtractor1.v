module fullsubtractor1(a,b,bin,diff,borrow);
  input a,b,bin;
  output diff,borrow;
  
   wire w1,w2,w3,b1,b2;
  
  xor G1 (w1,a,b);
  xor G2 (diff,w1,bin);

  not G3 (w2,w1);
  not G4 (w3,a);

  and G5 (b1,w2,bin);
  and G6 (b2,w3,b);

  or G7 (borrow,b1,b2);
endmodule

  
