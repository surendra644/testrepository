`timescale 1ns / 1ps
module xs3(input a,b,c,d,output [3:0] y);
assign y[0]=a|(b & (~c) &d )|(b & c);
assign y[1]=(a & b)|((~b) & d)|((~b) & c) |( b & (~c) &(~d));
assign y[2]=~(c ^ d)|(a & b);
assign y[3]=(~d) |(a & b);
endmodule
