`timescale 1ns / 1ps
module srflipflop(input r,s,en,output  reg q,q_bar);
always@(r,s,en)
begin
  if(en)
 begin
  if(s==0 && r==0 ) 
  begin
  q=1'bx;
  q_bar=1'bx;
  end
  else if(s==0 && r==1 ) 
  begin
   q=0;
  q_bar=1;
  end
  else if(s==1 && r==0)
  begin
  q=1;
  q_bar=0;
  end
  else if(s==1 && r==1)
  begin
  q=0;
  q_bar=0;
  end
 end
  else 
  begin
  q=0;
  q_bar=0;
  end
  
 end
endmodule
