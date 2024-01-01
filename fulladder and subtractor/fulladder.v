`timescale 1ns / 1ps
module halfadder(input a,b,output sum,cy);
assign sum=a^b;
assign cy=a&b;
endmodule
module fulladder(input a,b,c, output sum,cy);
wire w1,w2,w3;
halfadder ha1(a,b,w1,w2);
halfadder ha2(w1,c,sum,w3);
or or_gate(cy,w2,w3);
endmodule
