module HA1_tb;
  reg a,b;
  wire sum,carry;
  HA1 DUT(.a(a),.b(b),.sum(sum),.carry(carry));
  initial begin
    a=0;b=0;#5; $display("%b,%b | %b,%b",a,b,sum,carry);
    a=0;b=1;#5; $display("%b,%b | %b,%b",a,b,sum,carry);
    a=1;b=0;#5; $display("%b,%b | %b,%b",a,b,sum,carry);
    a=1;b=1;#5; $display("%b,%b | %b,%b",a,b,sum,carry);
    $finish;
  end
endmodule
    
