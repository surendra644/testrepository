`timescale 1ns / 1ps


module rs_flip_tb();
 reg r,s,en;
 wire q,q_bar;
 rsflipflop u1(r,s,en,q,q_bar);
 initial
   begin
   
 s=0;r=0;en=1;#10;
 s=0;r=1;en=1;#10;
 s=1;r=0;en=1;#10;
 s=1;r=1;en=1;#10;
 s=1;r=0;en=0;#10;
 s=0;r=0;en=0;#10;
   
   
   $stop;
   end
endmodule
