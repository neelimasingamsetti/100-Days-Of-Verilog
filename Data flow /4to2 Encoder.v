module Enc4_2(Y,a1,a0);
  input [3:0] Y;
  output a1,a0;
  assign a1 = Y[2] | Y[3];
  assign a0 = Y[1] | Y[3];
endmodule
      
  
  
