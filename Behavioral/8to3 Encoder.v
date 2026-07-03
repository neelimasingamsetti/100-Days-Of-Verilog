module Enc8_3(Y,a2,a1,a0);
  input [7:0] Y;
  output reg a2,a1,a0;
  always@(*)begin
    case(Y)
      
      8'b00000001: {a2,a1,a0}=3'b000;
      8'b00000010: {a2,a1,a0}=3'b001;
      8'b00000100: {a2,a1,a0}=3'b010;
      8'b00001000: {a2,a1,a0}=3'b011;
      8'b00010000: {a2,a1,a0}=3'b100;
      8'b00100000: {a2,a1,a0}=3'b101;
      8'b01000000: {a2,a1,a0}=3'b110;
      8'b10000000: {a2,a1,a0}=3'b111;
      default: {a2,a1,a0}=3'b000;

    endcase
  end
endmodule
