`timescale 1ns / 1ps
module xs3_tb();
reg a,b,c,d;
wire [3:0] y;
xs3 uut1(a,b,c,d,y);
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
  a=1;b=0;c=1;d=0;#10;
  a=1;b=0;c=1;d=1;#10;
  a=1;b=1;c=0;d=0;#10;
  a=1;b=1;c=0;d=1;#10;
  a=1;b=1;c=1;d=0;#10;
  a=1;b=1;c=1;d=1;#10;
  $stop;
  
  
  
  $stop;
  end
endmodule
