module fulladder1_tb;
  reg a,b,cin;
  wire sum,cout;
  fulladder1 DUT (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial begin
    $monitor("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
    a=0;b=0;cin=0; #5;
    a=0;b=0;cin=1; #5;
    a=0;b=1;cin=0; #5;
    a=0;b=1;cin=1; #5;
    a=1;b=0;cin=0; #5;
    a=1;b=0;cin=1; #5;
    a=1;b=1;cin=0; #5;
    a=1;b=1;cin=1; #5;
    $finish;
  end
endmodule
     
    
