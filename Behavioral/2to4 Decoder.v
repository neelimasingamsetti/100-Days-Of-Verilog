module Dec2_4(a,b,y0,y1,y2,y3);
  input a,b;
  output reg y0,y1,y2,y3;
  always@(*)begin
    
    y0=0;y1=0;y2=0;y3=0;
    
    if(~a&~b)
      y0=1;
    else if(~a&b)
       y1=1;
    else if(a&~b)
      y2=1;
    else
      y3=1;
  end
endmodule
      
    
      
