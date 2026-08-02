module sr_tb;
  reg s,r,clk;
  wire q,q_bar;
  always #5 clk=~clk;
  sr DUT (.s(s),.r(r),.clk(clk),.q(q),.q_bar(q_bar));
  initial begin
    clk=0;
    s=0;
    r=0;
    $monitor("Time=%0t,s=%b,r=%b,clk=%b,q=%b,q_bar=%b",$time,s,r,clk,q,q_bar);
    #5;
    s=0;r=0;
    #5;
    s=0;r=1;
    #5;
    s=1;r=0;
    #5;
    s=1;r=1;
    
    #10;
  $finish;
  end
endmodule

    
