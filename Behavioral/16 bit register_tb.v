module reg16_tb;
  reg [15:0]i;
  reg clk,rst,en;
  wire [15:0] q;
  reg16 DUT (.i(i),.clk(clk),.rst(rst),.en(en),.q(q));
  always #5 clk=~clk;
  initial begin
    $monitor("i=%b,clk=%b,rst=%b,en=%b,q=%b",i,clk,rst,en,q);
    clk=0;

    rst=0;
    en=1;
    i=16'b0010_0101_1010_1101;
    #10;

    rst=1;
    en=0;
    i=16'b0001_1011_1111_0110;
    #10;

    rst=0;
    en=1;
    i=16'b0000_0011_0100_0111;
    #10;

    $finish;
  end
endmodule

    
    
