`timescale 1ns / 1ps
module fulladder_dfs_tb();
reg a,b,c;
wire s,cy;
fulladder_dfs uut1(a,b,c,s,cy);
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
