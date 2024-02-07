`timescale 1ns / 1ps



module rsflipflop(input r,s,en,output  q,q_bar);
wire [3:0] w;
nand nand_1(w[0],r,en);
nand nand_2(w[1],s,en);
nand nand_3(q,w[0],q_bar);
nand nand_4(q_bar,w[1],q);
endmodule
