module sipo_tb;
  reg clk,rst,si;
  wire [3:0]q;
  wire [3:0]po;
  always #5 clk=~clk;
  sipo DUT(.clk(clk),.rst(rst),.si(si),.q(q),.po(po));
  initial begin
    $monitor("time=%0t,clk=%b,rst=%b,si=%b,q=%b,po=%b",$time,clk,rst,si,q,po);
    
    clk=0;
    rst=0;
    si=0;
    #2;
    
    rst=1;
    #5;
    rst=0;
    #5;
    
    si=1'b0;
    #10;
    
    si=1'b1;
    #10;
    
    si=1'b0;
    #10;
    
    si=1'b1;
    #10;
    
    #20;
    $finish;
  end
endmodule
