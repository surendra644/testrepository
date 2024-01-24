`timescale 1ns / 1ps
module decimal(input a,b,c,d,output [9:0] y);
assign y[0]=((~a) & (~b) & (~c) &(~d));
assign y[1]=((~a) & (~b) & (~c) & d);
assign y[2]=((~a) & (~b) & c & (~d));
assign y[3]=((~a) & (~b) & c & d);
assign y[4]=((~a) & b & (~c) & (~d));
assign y[5]=((~a) & b & (~c) & d);
assign y[6]=((~a) & b & c & (~d));
assign y[7]=((~a) & b & c & d);
assign y[8]=(a & (~b) & (~c) & (~d));
assign y[9]=(a & (~b) & (~c) & d);
endmodule
