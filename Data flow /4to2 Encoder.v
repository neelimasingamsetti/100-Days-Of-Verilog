module Enc4_2(Y,a1,a0);
  input [3:0] Y;
  output reg a1,a0;
  always@(*)begin
    case(Y)

      4'b0001: {a1,a0}=2'b00;
      4'b0010: {a1,a0}=2'b01;
      4'b0100: {a1,a0}=2'b10;
      4'b1000: {a1,a0}=2'b11;
      default: {a1,a0}=2'b00;

    endcase
  end
endmodule
      
  
  
