module comp(a,b,x,y,z);
  input a,b;
  output reg x,y,z;
  always@(*)begin
    
    if(a==0&&b==0)begin
      x=0;
      y=1;
      z=0;
    end
    else if(a==0&&b==1)begin
      x=0;
      y=0;
      z=1;
    end
    else if(a==1&&b==0)begin
      x=1;
      y=0;
      z=0;
    end
    else begin
      x=0;
      y=1;
      z=0;
    end

  end
endmodule

    
    
    
