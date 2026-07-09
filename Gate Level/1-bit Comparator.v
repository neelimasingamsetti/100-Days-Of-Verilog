module comp(a,b,x,y,z);
  input a,b;
  output x,y,z;
  
  wire w1,w2;
  
  not G1 (w1,a);
  not G2 (w2,b);
  
  and G3 (x,w2,a);  
  and G4 (z,w1,b);  
  xnor G5 (y,a,b);  
  
endmodule
