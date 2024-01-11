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
module mul4bit(input [3:0] a,b,output [7:0] y);
wire [19:0] w;
wire [5:0] c;
and_1 u1(a[0],b[0],y[0]);
and_1 u2(a[1],b[0],w[0]);
and_1 u3(a[0],b[1],w[1]);
or u4(y[1],w[0],w[1]);
 and_1 u5(a[2],b[0],w[2]);
 and_1 u6(a[0],b[2],w[3]);
 or u7(w[4],w[2],w[3]);
 and_1 u8(a[1],b[1],w[5]);
 and_1 u9(a[3],b[0],w[6]);
 and_1 u10(a[0],b[3],w[7]);
 or u_11(w[18],w[6],w[7]);
 and_1 u11(a[2],b[1],w[8]);
 and_1 u12(a[1],b[2],w[9]);
 or u13(w[10],w[8],w[9]);
 and_1 u14(a[3],b[1],w[11]);
 and_1 u15(a[1],b[3],w[12]);
 or u16(w[13],w[11],w[12]);
  and_1 u17(a[2],b[2],w[14]);
  and_1 u18(a[3],b[2],w[15]);
 and_1 u19(a[2],b[3],w[16]);
 and_1 u20(a[3],b[3],w[17]);
 or u_21(w[19],w[14],w[15]);
 ha u21(w[4],w[5],y[2],c[0]);
 fa u22(w[18],c[0],w[10],y[3],c[1]);
 fa u23(w[13],c[1],w[14],y[4],c[2]);
 ha u24(c[2],w[19],y[5],c[3]);
 ha u25(c[3],w[17],y[6],y[7]);
endmodule
