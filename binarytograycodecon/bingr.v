`timescale 1ns / 1ps



module bingr(input a,b,c,d,output [3:0] y);
assign y[0]=a;
xor x_1(y[1],a,b);
xor x_2(y[2],b,c);
xor x_3(y[3],c,d);
endmodule
