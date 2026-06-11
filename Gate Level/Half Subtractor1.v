module halfsubtrctor1(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  
  wire w1;

  xor G1 (diff,a,b);
  not G2 (w1,a);
  and G3 (borrow,w1,b);
endmodule

  
