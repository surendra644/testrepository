`timescale 1ns / 1ps
module fulladder(input a,b,c,output s);
//assign sum=a^b^c;
 xor xor_1(s,a,b,c);
endmodule
module carry_gen(input a,b,c,output cin);
assign cin=(c&(a^b) )| (a &b);
endmodule


module clag_1(input a0,a1,a2,a3,b0,b1,b2,b3,output s0,s1,s2,s3,cout);
wire c1,c2,c3;
assign c0=0;
fulladder fa1(a0,b0,c0,s0);
carry_gen cy0(a0,b0,c0,c1);
fulladder fa2(a1,b1,c1,s1);
carry_gen cy1(a1,b1,c1,c2);
fulladder fa3(a2,b2,c2,s2);
carry_gen cy2(a2,b2,c2,c3);
fulladder fa4(a3,b3,c3,s3);
carry_gen cf(a3,b3,c3,cout);  
endmodule
