`timescale 1ns / 1ps



module jkflipflop(input j,k,en,output reg  q,output q_bar);
initial q=0;
always@(negedge en)
 q=((~q) &  j) |(q & (~k));
assign  q_bar=(~q);
endmodule