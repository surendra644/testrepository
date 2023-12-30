`timescale 1ns / 1ps
module basicgates_tb();
reg a,b;
wire f0,f1,f2,f3,f4,f5,f6;
basicgates uut1(a,b,f0,f1,f2,f3,f4,f5,f6);
initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$stop;
end
endmodule
