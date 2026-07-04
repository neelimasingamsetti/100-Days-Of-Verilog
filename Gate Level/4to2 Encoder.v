module Enc4_2(Y,a1,a0);
  input [3:0] Y;
  output a1,a0;
  
  or G1 (a1,Y[2],Y[3]);
  or G2 (a0,Y[1],Y[3]);

endmodule

  
