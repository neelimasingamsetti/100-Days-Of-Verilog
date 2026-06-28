module mux4x1(I,S,Y);
  input [3:0] I;
  input [1:0] S;
  output Y;

  wire w1,w2,w3,w4,w5,w6;
  
  not G1 (w1,S[1]);
  not G2 (w2,S[0]);

  and G3 (w3,w1,w2,I[0]);
  and G4 (w4,w1,S[0],I[1]);
  and G5 (w5,S[1],w2,I[2]);
  and G6 (w6,S[1],S[0],I[3]);

  or G7 (Y,w3,w4,w5,w6);
endmodule
