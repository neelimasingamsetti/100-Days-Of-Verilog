module allgates1(a,b,and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y);
  input a,b;
  output reg and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y;
  
  always@(*)
    begin
  if(a==1 && b==1)  //AND gate
      and_y=1;
    else 
      and_y=0;
  
      if(a==1 || b==1)  //OR gate
    or_y=1;
  else
    or_y=0;
      
      if(a==0)       //NOT gate
    not_y=1;
  else
    not_y=0;

      if(a==1 && b==1)    //NAND gate
    nand_y=0;
  else
    nand_y=1;
  
      if(a==0 && b==0)        //NOR gate
    nor_y=1;
  else 
    nor_y=0;

  if(a!=b)             //XOR gate
    xor_y=1;
  else
    xor_y=0;

  if(a==b)             //XNORgate
    xnor_y=1;
  else
    xnor_y=0;
    end
endmodule
      
        
      
      
  
