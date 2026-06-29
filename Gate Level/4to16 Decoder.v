module Dec4_16(a,b,c,d,Y);
  input a,b,c,d;
  output [15:0] Y;
  wire w1,w2,w3,w4;

  not G1 (w1,a);
  not G2 (w2,b);
  not G3 (w3,c);
  not G4 (w4,d);

  and G5 (Y[0],w1,w2,w3,w4); //0000
  and G6 (Y[1],w1,w2,w3,d); //0001
  and G7 (Y[2],w1,w2,c,w4); //0010
  and G8 (Y[3],w1,w2,c,d); //0011
  and G9 (Y[4],w1,b,w3,w4); //0100
  and G10 (Y[5],w1,b,w3,d); //0101
  and G11 (Y[6],w1,b,c,w4); //0110
  and G12 (Y[7],w1,b,c,d); //0111
  and G13 (Y[8],a,w2,w3,w4); //1000
  and G14 (Y[9],a,w2,w3,d); //1001
  and G15 (Y[10],a,w2,c,w4); //1010
  and G16 (Y[11],a,w2,c,d); //1011
  and G17 (Y[12],a,b,w3,w4); //1100
  and G18 (Y[13],a,b,w3,d); //1101
  and G19 (Y[14],a,b,c,w4); //1110
  and G20 (Y[15],a,b,c,d); //1111

endmodule
  
