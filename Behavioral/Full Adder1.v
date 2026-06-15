module fulladder1(a,b,cin,sum,cout);
  input a,b,cin;
  output reg sum,cout;
  always@(*)begin
  
    if(a^b^cin)
    sum=1;
  else
    sum=0;

    if((a&b) || (b&cin) || (cin&a))
    cout=1;
  else
    cout=0;
  end
endmodule
