module siso_tb;
  reg clk;
  reg si;
  reg rst;
  wire so;
  wire [3:0]q;
  always #5clk=~clk;
  
  siso DUT(.clk(clk),.si(si),.rst(rst),.so(so),.q(q));
  initial begin
    $monitor("time=%0t,clk=%b,rst=%b,si=%b,so=%b,q=%b",$time,clk,rst,si,so,q);
 
    clk=0;
    rst=0;
    si=0;
    #2;
    
    rst=1; #5;
    rst=0; #5;
    
    si=1'b1;
    #10;
    
    si=1'b0;
    #10;
    
    si=1'b1;
    #10;
    
    si=1'b1;
    #10;
    
    #20;
    
    $finish;
  end
endmodule
