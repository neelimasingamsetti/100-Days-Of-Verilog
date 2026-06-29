module Dec3_8(a,b,c,Y);
  input a,b,c;
  output [7:0] Y;

  wire w1,w2,w3;

  not G1 (w1,a);
  not G2 (w2,b);
  not G3 (w3,c);

  and G4 (Y[0],w1,w2,w3); //000
  and G5 (Y[1],w1,w2,c); //001
  and G6 (Y[2],w1,b,w3); //010
  and G7 (Y[3],w1,b,c); //011
  and G8 (Y[4],a,w2,w3); //100
  and G9 (Y[5],a,w2,c); //101
  and G10 (Y[6],a,b,w3); //110
  and G11 (Y[7],a,b,c); //111

endmodule
  
