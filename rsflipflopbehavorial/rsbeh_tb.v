`timescale 1ns / 1ps


module rsbeh_tb();
reg r,s,en;
wire q,q_bar;
srflipflop u1(r,s,en,q,q_bar);
initial
  begin
  en=0;r=0;s=0;#10;
   en=0;r=0;s=0;#10;
   en=1;r=0;s=0;#10;
   en=1;r=0;s=1;#10;
   en=1;r=1;s=0;#10;
   en=1;r=1;s=1;#10;
  
  $stop;
  end
endmodule
