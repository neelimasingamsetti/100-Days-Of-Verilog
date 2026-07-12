module comp(a,b,x,y,z);
  input [1:0] a,b;
  output x,y,z;

  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
  xnor G1 (w1,a[1],b[1]);   //A=B
  xnor G2 (w2,a[0],b[0]);
  and G3 (y,w1,w2);
  
  not G4 (w3,b[1]);   //A>B
  and G5 (w4,a[1],w3);
  not G6 (w5,b[0]);
  and G7 (w6,w1,a[0],w5);
  or G8 (x,w4,w6);
  
  not G9  (w7,a[1]);
  and G10 (w8,w7,b[1]);
  not G11 (w9,a[0]);
  and G12 (w10,w1,w9,b[0]);
  or G13 (z,w8,w10);
endmodule
