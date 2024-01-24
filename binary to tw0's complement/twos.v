`timescale 1ns / 1ps



module twos(input a,b,c,d,output [3:0] y);
assign y[0]=((~a) & b )|((~a)& d) |((~a) & c)|(a & (~b) & (~c) & (~d));
assign y[1]=((~b) & d)|((~b) & c)|(b & (~c) & (~d));
assign y[2]=c^d;
assign y[3]=d;
endmodule
