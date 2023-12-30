`timescale 1ns / 1ps
module basicgates(input a,b,output f0,f1,f2,f3,f4,f5,f6);
 or or_1(f0,a,b);
 nor nor_1(f1,a,b);
 and and_1(f2,a,b);
 nand nand_1(f3,a,b);
 xor xor_1(f4,a,b);
 xnor xnor_1(f5,a,b);
 not not_1(f6,a);
endmodule
