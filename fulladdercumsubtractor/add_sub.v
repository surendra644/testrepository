`timescale 1ns / 1ps
module ha(input a,b,output s,cy);
assign s=a^b;
assign cy=a&b;
endmodule
module fa(input a,b,c,output s,cy);
wire [2:0] w;
ha uut1(a,b,w[0],w[1]);
ha uut2(w[0],c,s,w[2]);
or or_1(cy,w[1],w[2]);
endmodule
module dec_ckt(input a,b,output y);
xor xor_1(y,a,b);
endmodule
module add_sub(input [3:0] a,b,input en,output [3:0] s,output cout);
wire [3:0] bi;
wire [2:0] ci;
dec_ckt xor1(en,b[0],bi[0]);
fa fa1(a[0],bi[0],en,s[0],ci[0]);
dec_ckt xor2(en,b[1],bi[1]);
fa fa2(a[1],bi[1],ci[0],s[1],ci[1]);
dec_ckt xor3(en,b[2],bi[2]);
fa fa3(a[2],bi[2],ci[1],s[2],ci[2]);
dec_ckt xor4(en,b[3],bi[3]);
fa fa4(a[3],bi[3],ci[2],s[3],cout);
endmodule
