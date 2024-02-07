`timescale 1ns / 1ps
module halfadder (input a,b, output s,cy);
xor xor_1(s,a,b);
and and_1(cy,a,b);
endmodule
module fulladder(input a,b,c,output s,cy);
halfadder ha1(a,b,w1,w2);
halfadder ha2(w1,c,s,w3);
or or_1(cy,w2,w3);
endmodule
module rip(input [3:0] a,b,output [3:0] s,output cout);
wire [3:0] w;
assign w[0]=0;
fulladder fa1(a[0],b[0],w[0],s[0],w[1]);
fulladder fa2(a[1],b[1],w[1],s[1],w[2]);
fulladder fa3(a[2],b[2],w[2],s[2],w[3]);
fulladder fa4(a[3],b[3],w[3],s[3],cout); 
endmodule 
module correction(input a,b,c,d,output y);
assign y=(a & b)|(a & c)|d;
endmodule
module bcdadd(input [3:0] a,b,output [3:0] s);
wire [3:0] w;
wire c1;
wire ain;
rip u1(a,b,w,c1);
correction u2(w[3],w[2],w[1],c1,ain);
wire [3:0] afin;
assign afin[0]=0;
assign afin[1]=ain;
assign afin[2]=ain;
assign afin[3]=0;
wire c;
assign c=0;
rip u3(afin,w,s,c);
endmodule
