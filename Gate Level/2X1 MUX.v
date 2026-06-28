module mux2x1 (I,S,Y);
  input [1:0] I;
  input S;
  output Y;

  wire w1,w2,w3;

  not G1 (w1,S);
  and G2 (w2,w1,I[0]);
  and G3 (w3,S,I[1]);
  or G4 (Y,w2,w3);

endmodule
