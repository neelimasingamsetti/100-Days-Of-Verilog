module halfadder1(a,b,sum,carry);
  input a,b;
  output reg sum,carry;
  always@(*)begin
    if(a!=b)
      sum = 1;
    else  
      sum = 0;

    if(a==1 && b==1)
      carry = 1;
    else
      carry = 0;
  end
endmodule
