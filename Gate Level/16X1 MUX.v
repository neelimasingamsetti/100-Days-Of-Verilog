module mux16x1(I,S,Y);
  input [15:0] I;
  input [3:0] S;
  output Y;
  
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20;

  not G1 (w1,S[3]);
  not G2 (w2,S[2]);
  not G3 (w3,S[1]);
  not G4 (w4,S[0]);

  and G5 (w5,w1,w2,w3,w4,I[0]);              //0000
  and G6 (w6,w1,w2,w3,S[0],I[1]);            //0001
  and G7 (w7,w1,w2,S[1],w4,I[2]);            //0010
  and G8 (w8,w1,w2,S[1],S[0],I[3]);          //0011
  and G9 (w9,w1,S[2],w3,w4,I[4]);            //0100
  and G10 (w10,w1,S[2],w3,S[0],I[5]);          //0101
  and G11 (w11,w1,S[2],S[1],w4,I[6]);        //0110
  and G12 (w12,w1,S[2],S[1],S[0],I[7]);      //0111
  and G13 (w13,S[3],w2,w3,w4,I[8]);          //1000
  and G14 (w14,S[3],w2,w3,S[0],I[9]);        //1001
  and G15 (w15,S[3],w2,S[1],w4,I[10]);       //1010
  and G16 (w16,S[3],w2,S[1],S[0],I[11]);     //1011
  and G17 (w17,S[3],S[2],w3,w4,I[12]);       //1100
  and G18 (w18,S[3],S[2],w3,S[0],I[13]);     //1101
  and G19 (w19,S[3],S[2],S[1],w4,I[14]);     //1110
  and G20 (w20,S[3],S[2],S[1],S[0],I[15]);   //1111

  or G21 (Y,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20);

endmodule


  
       

  
