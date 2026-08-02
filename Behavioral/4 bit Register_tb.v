module reg_tb;
  reg i0,i1,i2,i3,clk;
  wire q0,q1,q2,q3;
  always #5 clk=~clk;
  reg4 DUT (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.clk(clk),.q0(q0),.q1(q1),.q2(q2),.q3(q3));
  initial begin
    clk=0;
    $monitor("i0=%b,i1=%b,i2=%b,i3=%b,clk=%b,q0=%b,q1=%b,q2=%b,q3=%b",i0,i1,i2,i3,clk,q0,q1,q2,q3);
    i0=0;i1=0;i2=0;i3=0;
    #10;
    
    i0=1;i1=0;i2=0;i3=0;
    #10;
    
    i0=0;i1=1;i2=0;i3=0;
    #10;
    
    i0=0;i1=0;i2=1;i3=0;
    #10;
    
    i0=0;i1=0;i2=0;i3=1;
    #10;
    
    $finish;
  end
endmodule
