module t_tb;
  reg t,clk;
  wire q,q_bar;
  always #5 clk=~clk;
  t DUT (.t(t),.clk(clk),.q(q),.q_bar(q_bar));
  initial begin
    clk=0;
    t=0;
    $monitor("time=%0t,t=%b,clk=%b,q=%b,q_bar=%b",$time,t,clk,q,q_bar);
    #5;
    t=0;

    #5;
    t=1;

    #10;
    $finish;
  end
endmodule
