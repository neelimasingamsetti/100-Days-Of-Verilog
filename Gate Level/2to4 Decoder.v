module Dec2_4(a,b,y0,y1,y2,y3);
  input a,b;
  output y0,y1,y2,y3;

  wire w1,w2;

  not G1 (w1,a);
  not G2 (w2,b);

  and G3 (y0,w1,w2);
  and G4 (y1,w1,b);
  and G5 (y2,a,w2);
  and G6 (y3,a,b);

endmodule
  

  

  
