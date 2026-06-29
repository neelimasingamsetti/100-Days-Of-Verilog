module Dec4_16(a,b,c,d,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);
  input a,b,c,d;
  output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
  assign y0=(~a&~b&~c&~d); //0000
  assign y1=(~a&~b&~c&d);  //0001
  assign y2=(~a&~b&c&~d);  //0010
  assign y3=(~a&~b&c&d);   //0011
  assign y4=(~a&b&~c&~d);  //0100
  assign y5=(~a&b&~c&d);  //0101
  assign y6=(~a&b&c&~d);   //0110
  assign y7=(~a&b&c&d);    //0111
  assign y8=(a&~b&~c&~d);  //1000
  assign y9=(a&~b&~c&d);   //1001
  assign y10=(a&~b&c&~d);  //1010
  assign y11=(a&~b&c&d);   //1011
  assign y12=(a&b&~c&~d);  //1100
  assign y13=(a&b&~c&d);   //1101
  assign y14=(a&b&c&~d);   //1110
  assign y15=(a&b&c&d);    //1111
endmodule
  
