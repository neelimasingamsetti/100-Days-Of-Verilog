module Enc16_4(Y,a3,a2,a1,a0);
  input [15:0] Y;
  output a3,a2,a1,a0;

  assign a3 = Y[8] | Y[9] | Y[10] | Y[11] | Y[12] | Y[13] | Y[14] | Y[15];
  assign a2 = Y[4] | Y[5] | Y[6] | Y[7] | Y[12] | Y[13] | Y[14] | Y[15];
  assign a1 = Y[2] | Y[3] | Y[6] | Y[7] | Y[10] | Y[11] | Y[14] | Y[15];
  assign a0 = Y[1] | Y[3] | Y[5] | Y[7] | Y[9] | Y[11] | Y[13] | Y[15];

endmodule
  
