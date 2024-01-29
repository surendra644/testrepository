`timescale 1ns / 1ps
module compa2bit(input [1:0] a,b,output agtb,aeqb,altb);
assign agtb=(a[1]&(~b[1]))|(~(a[1]^b[1])& (a[0] & (~b[0])));
assign altb=((~a[1]) & b[1]) |(~(a[1]^b[1])& ((~a[0]) & b[0]));
assign aeqb=(~(a[1]^b[1]))&(~(a[0]^b[0]));
endmodule
