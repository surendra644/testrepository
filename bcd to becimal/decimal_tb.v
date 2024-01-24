`timescale 1ns / 1ps
module decimal_tb();
reg a,b,c,d;
wire [9:0] y;
decimal uut1(a,b,c,d,y);
initial
  begin
  
   a=0;b=0;c=0;d=0;#10;
  a=0;b=0;c=0;d=1;#10;
  a=0;b=0;c=1;d=0;#10;
  a=0;b=0;c=1;d=1;#10;
  a=0;b=1;c=0;d=0;#10;
  a=0;b=1;c=0;d=1;#10;
  a=0;b=1;c=1;d=0;#10;
  a=0;b=1;c=1;d=1;#10;
  a=1;b=0;c=0;d=0;#10;
  a=1;b=0;c=0;d=1;#10;
  $stop;
  
  
  
  $stop;
  end
endmodule
