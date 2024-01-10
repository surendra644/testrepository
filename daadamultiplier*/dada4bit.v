`timescale 1ns / 1ps
module ha(input a,b,output s,cy);
xor xor_1(s,a,b);
and and_1(cy,a,b);
endmodule
module fa(input a,b,c,output s,cy);
wire [2:0] w;
ha u1(a,b,w[0],w[1]);
ha u2(c,w[0],s,w[2]);
or or_1(cy,w[1],w[2]);
endmodule
module and_1 (input a,b,output y);
and and_2(y,a,b);
endmodule
module comp(input a,b,c,d,e,output c0,s0,c1);
wire w;
fa u1(a,b,c,w,c0);
fa u2(d,e,w,s0,c1);
endmodule
module dada4bit(input [3:0] a,b,output [7:0] y);
wire [16:0] w;
wire [16:0] c;
wire [16:0] s;
and_1 u1(a[2],b[0],w[0]);
and_1 u2(a[1],b[1],w[1]);
and_1 u3(a[0],b[2],w[2]);
fa u4(w[0],w[1],w[2],s[2],c[0]);
and_1 u5(a[3],b[0],w[3]);
and_1 u6(a[2],b[1],w[4]);
and_1 u7(a[1],b[2],w[5]);
and_1 u8(a[0],b[3],w[6]);
comp u9(c[0],w[3],w[4],w[5],w[6],c[1],s[3],c[2]);
and_1 u10(a[3],b[1],w[7]);
and_1 u11(a[2],b[2],w[8]);
and_1 u12(a[1],b[3],w[9]);
comp u13(c[1],c[2],w[7],w[8],w[9],c[3],s[4],c[4]);
and_1 u14(a[1],b[0],w[10]);
and_1 u15(a[0],b[1],w[11]);
ha u16(w[10],w[11],y[1],c[5]);
ha u17(c[5],s[2],y[2],c[6]);
ha u18(c[6],s[3],y[3],c[7]);
ha u19(c[7],s[4],y[4],c[8]);
and_1 u20(a[3],b[2],w[12]);
and_1 u21(a[2],b[3],w[13]);
comp u22(c[8],c[3],c[4],w[12],w[13],c[9],y[5],c[10]);
and_1 u23(a[3],b[3],w[14]);
fa u24(c[9],c[10],w[14],y[6],y[7]);
and_1 u25(a[0],b[0],y[0]);



endmodule
