module mux8x1(I,S,Y);
  input [7:0] I;
  input [2:0] S;
  output Y;
  
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;

  not G1 (w1,S[2]);
  not G2 (w2,S[1]);
  not G3 (w3,S[0]);

  and G4 (w4,w3,w2,w1,I[0]); //000
  and G5 (w5,w1,w2,S[0],I[1]); //001
  and G6 (w6,w1,S[1],w3,I[2]);  //010
  and G7 (w7,w1,S[1],S[0],I[3]);   //011
  and G8 (w8,S[2],w2,w3,I[4]);  //100
  and G9 (w9,S[2],w2,S[0],I[5]); //101
  and G10 (w10,S[2],S[1],w3,I[6]); //110
  and G11 (w11,S[2],S[1],S[0],I[7]);  //111

  or G12 (Y,w4,w5,w6,w7,w8,w9,w10,w11);

endmodule
 
  
  

  

  
    
