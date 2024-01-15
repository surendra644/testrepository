`timescale 1ns / 1ps
module sum(input a,b,c,output reg sum);
always@(a,b,c)
begin
if(a==0 && b==0)
sum=c;
if(a==0 && b==1)
sum=(~c);
if(a==1 && b==0)
sum=(~c);
if(a==1 && b==1)
sum=c;
end
endmodule
module cy(input a,b,c,output reg cy);
always@(a,b,c)
begin
if(a==0 && b==0)
cy=0;
if(a==0 && b==1)
cy=c;
if(a==1 && b==0)
cy=c;
if(a==1 && b==1)
cy=1;
end
endmodule
module famux(input a,b,c,output  sum,cy);
sum u1(a,b,c,sum);
cy u2(a,b,c,cy);
endmodule
