module NOT1_tb;
reg a;
wire y;
NOT1 DUT (.a(a),
          .y(y));
initial begin
a=0; #5;
$display("a=%b,y=%b", a,y);
a=1; #5;
$display("a=%b,y=%b", a,y);
$finish;
end
endmodule
