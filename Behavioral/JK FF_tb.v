module jk_tb;
  reg j,k,clk;
  wire q,q_bar;
  jk DUT(.j(j),.k(k),.clk(clk),.q(q),.q_bar(q_bar));
   always #5 clk=~clk
  initial begin
    
    clk=0;
    j=0;
    k=0;
    
    $monitor("j=%b,k=%b,clk=%b,q=%b,q_bar=%b",j,k,clk,q,q_bar);
    #10;
    j=0;k=0;
    #10;
    j=0;k=1;
    #5;
    j=1;k=0;
    #5;
    j=1;k=1;
    
    $finish;
  end
endmodule
