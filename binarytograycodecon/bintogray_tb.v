`timescale 1ns / 1ps
module bintogray_tb();
reg a,b,c,d;
wire [3:0] y;
bingr u1(a,b,c,d,y);
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
  end
endmodule
