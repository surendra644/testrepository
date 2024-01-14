`timescale 1ns / 1ps
module basicmux_tb();
reg a,b;
wire [5:0] y;
bgmux uut(a,b,y);
initial
 begin
 a=0;b=0;#10;
 a=0;b=0;#10;
 a=0;b=1;#10;
 a=0;b=1;#10;
 a=1;b=0;#10;
 a=1;b=0;#10;
 a=1;b=1;#10;
 a=1;b=1;#10;
 
 $stop;
 end
endmodule
