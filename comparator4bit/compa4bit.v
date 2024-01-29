`timescale 1ns / 1ps



module compa4bit(input [3:0] a,b,output agtb,altb,aeqb);
wire [20:0] w;
assign w[0]=a[3] & (~b[3]);
assign w[1]=(~(a[3]^b[3])) & (a[2] & ~b[2]);
assign w[2]=(~(a[3]^b[3])) & (~(a[2]^b[2])) & (a[1] &(~b[1]));
assign w[3]=(~(a[3]^b[3])) & (~(a[2]^b[2])) & (~(a[2]^b[2])) & (a[0] &(~ b[0]));
or or_1(agtb,w[0],w[1],w[2],w[3]);
assign w[4]=((~a[3]) & b[3]);
assign w[5]=(~(a[3]^b[3]))& (b[2] & ~a[2]);
assign w[6]=(~(a[3]^b[3])) & (~(a[2]^b[2])) & (b[1] &(~a[1]));
assign w[7]=(~(a[3]^b[3])) & (~(a[2]^b[2])) & (~(a[1]^b[1])) & (b[0] &(~a[0]));
or or_2(altb,w[4],w[5],w[6],w[7]);
assign aeqb=(~(a[3]^b[3])) & (~(a[2]^b[2])) & (~(a[2]^b[2])) & (~(a[0] ^ b[0]));
endmodule
