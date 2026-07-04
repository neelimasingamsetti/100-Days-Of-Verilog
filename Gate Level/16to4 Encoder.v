module Enc16_4(Y,a3,a2,a1,a0);
  input [15:0] Y;
  output a3,a2,a1,a0;
  
  or G1 (a0,Y[1],Y[3],Y[5],Y[7],Y[9],Y[11],Y[13],Y[15]);
  or G2 (a1,Y[2],Y[3],Y[6],Y[7],Y[10],Y[11],Y[14],Y[15]);
  or G3 (a2,Y[4],Y[5],Y[6],Y[7],Y[12],Y[13],Y[14],Y[15]);
  or G4 (a3,Y[8],Y[9],Y[10],Y[11],Y[12],Y[13],Y[14],Y[15]);

endmodule

  

  
