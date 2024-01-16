`timescale 1ns / 1ps


module mux4by1(input a,b,c,d,s0,s1,output reg y);
always@(a,b,c,d,s0,s1)
begin
if(s0==0 && s1==0) 
y=a;
if(s0==0 && s1==1) 
y=b;
if(s0==1 && s1==0) 
y=c;
if(s0==1 && s1==1) 
y=d;
end
endmodule
module mux(input a,b,en, output reg y);
always@(a,b,en)
begin
if(en)
y=b;
else
y=a;
end
endmodule

module muxusingmux(input [7:0] a,input [2:0] s,output y);
wire [3:0] w;
assign w[2]=0;
mux4by1 u1(a[0],a[1],a[2],a[3],s[1],s[0],w[0]);
mux4by1 u2(a[4],a[5],a[6],a[7],s[1],s[0],w[1]);
mux u3(w[0],w[1],s[2],y);
endmodule
