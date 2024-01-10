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
module and_1(input a,b,output y);
and and_1(y,a,b);
endmodule
module waltree(input [3:0] a,b,output [7:0] y);
 wire [14:0] w;
 wire [5:0] s;
 wire [10:0] c;
 //stage 1
 and_1 u1(a[1],b[2],w[0]);
 and_1 u2(a[0],b[3],w[1]);
 ha  u3(w[0],w[1],s[0],c[0]);
   
 and_1 u4(a[2],b[2],w[2]);
 and_1 u5(a[1],b[3],w[3]);
 ha u6 (w[2],w[3],s[1],c[1]);
 
 //stage 2
 and_1 u7(a[1],b[1],w[4]);
 and_1 u8(a[0],b[2],w[5]);
 ha u9(w[4],w[5],s[2],c[2]);
 
 
 and_1 u10(a[3],b[0],w[6]);
 and_1 u11(a[2],b[1],w[7]);
 fa u12(s[0],w[6],w[7],s[3],c[3]);
 and_1 u13(a[3],b[1],w[8]);
 
 fa u14(s[1],c[0],w[8],s[4],c[4]);
 and_1 u15(a[3],b[2],w[9]);
 and_1 u16(a[2],b[3],w[10]);
 fa u17(c[1],w[9],w[10],s[5],c[5]);
 
 //stage 3
 
 and_1 u18(a[1],b[0],w[11]);
 and_1 u19(a[0],b[1],w[12]);
 ha u20(w[11],w[12],y[1],c[6]);
 and_1 u21(a[2],b[0],w[13]);
 fa u22(w[13],c[6],s[2],y[2],c[7]);
 fa u23(c[7],c[2],s[3],y[3],c[8]);
 fa u24(c[8],c[3],s[4],y[4],c[9]);
 fa u25(c[9],c[4],s[5],y[5],c[10]);
 and_1 u26(a[3],b[3],w[14]);
 fa u27(c[10],c[5],w[14],y[6],y[7]);
 and_1 u28(a[0],b[0],y[0]);
endmodule
