`timescale 1ns / 1ps
module par_gen(input [3:0] a,b,output [3:0] peven,podd);
xor evenp0(peven[0],a[0],b[0]);
xnor oddp0(podd[0],a[0],b[0]);
xor evenp1(peven[1],a[1],b[1]);
xnor oddp1(podd[1],a[1],b[1]);
xor evenp2(peven[2],a[2],b[2]);
xnor oddp2(podd[2],a[2],b[2]);
xor evenp3(peven[3],a[3],b[3]);
xnor oddp3(podd[3],a[3],b[3]);
endmodule
