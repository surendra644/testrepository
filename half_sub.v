`timescale 1ns / 1ps
module half_sub(input a,b,output dif,bw);
wire c0,c1;
not not_2(c1,a);

xor xor_1(dif,a,b);
assign bw=c1 & b;
endmodule
