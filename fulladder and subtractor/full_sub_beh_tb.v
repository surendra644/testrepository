`timescale 1ns / 1ps
module full_sub_beh_tb();

reg a,b,c;
wire dif,bw;
full_sub_beh uut(a,b,c,dif,bw);
initial 
   begin
   a=0;b=0;c=0;#10;
   a=0;b=0;c=1;#10;
   a=0;b=1;c=0;#10;
   a=0;b=1;c=1;#10;
   a=1;b=0;c=0;#10;
   a=1;b=0;c=1;#10;
   a=1;b=1;c=0;#10;
   a=1;b=1;c=1;#10;
   $stop;
   end
endmodule
