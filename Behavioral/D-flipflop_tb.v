module d_fftb;
  reg d,clk;
  wire q,q_bar;
  d_ff DUT (.d(d),.clk(clk),.q(q),.q_bar(q_bar));
  always #5 clk = ~clk;
  initial begin
    $monitor("d=%b,clk=%b,q=%b,q_bar=%b",d,clk,q,q_bar);
    d=0;
    clk=0; 
    
    #10;
    d=1;
    
    #5;
    d=0; 
    
    #5;
    d=1;
    
  end
endmodule
