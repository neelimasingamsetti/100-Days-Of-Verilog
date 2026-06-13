module and1(a,b,y);
  input a,b;
  output reg y;
  always@(*)
    begin
      if(a==1 && b==1)
        begin
          y=1;
        end
      else
        y=0;
    end
endmodule
