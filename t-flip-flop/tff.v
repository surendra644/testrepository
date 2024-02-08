`timescale 1ns / 1ps



module tff(input t,clk,output reg q,output q_bar);
initial q=1;
always@(negedge clk)
 q=t^q;
assign  q_bar=(~q);
endmodule
