module Enc8_3(Y,a2,a1,a0);
  input [7:0] Y;
  output a2,a1,a0;
  
  assign a2 = Y[4] | Y[5] | Y[6] | Y[7];
  assign a1 = Y[2] | Y[3] | Y[6] | Y[7];
  assign a0 = Y[1] | Y[3] | Y[5] | Y[7];

endmodule
  
