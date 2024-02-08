`timescale 1ns / 1ps



module dff(input d,en,output q,q_bar);
wire [2:0] w;
assign w[2]=~d;
nand nand_1(w[0],d,en);
nand nand_2(w[1],w[2],en);
nand nand_3(q,w[0],q_bar);
nand nand_4(q_bar,w[1],q);
endmodule
