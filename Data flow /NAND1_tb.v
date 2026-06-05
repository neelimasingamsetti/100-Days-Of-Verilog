module NAND1_tb;
reg a,b;
wire y;
NAND1 DUT (.a(a),.b(b),.y(y));
initial begin
#5 a=0;b=0;
$display("a=%b,b=%b,y=%b", a,b,y);
#5 a=0;b=1;
$display("a=%b,b=%b,y=%b", a,b,y);
#5 a=1;b=0;
$display("a=%b,b=%b,y=%b", a,b,y);
#5 a=1;b=1;
$display("a=%b,b=%b,y=%b", a,b,y);
$finish;
end
endmodule
