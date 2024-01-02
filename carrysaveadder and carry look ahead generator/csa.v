`timescale 1ns / 1ps
module stage1_fa (input a,b,c,output s,cy);
//assign s=a^b^c;
xor xor_1(s,a,b,c);
assign cy=(a & b)|c &(a^b);
endmodule

module csa(input a0,a1,a2,a3,a4,a5,a6,a7,b0,b1,b2,b3,b4,b5,b6,b7,c0,c1,c2,c3,c4,c5,c6,c7,output s0,s1,s2,s3,s4,s5,s6,s7,s8,cout);
wire s00,s01,s02,s03,s04,s05,s06,s07,cy00,cy01,cy02,cy03,cy04,cy05,cy06,cy07;
stage1_fa fa1(a0,b0,c0,s0,cy00);
stage1_fa fa2(a1,b1,c1,s01,cy01);
stage1_fa fa3(a2,b2,c2,s02,cy02);
stage1_fa fa4(a3,b3,c3,s03,cy03);
stage1_fa fa5(a4,b4,c4,s04,cy04);
stage1_fa fa6(a5,b5,c5,s05,cy05);
stage1_fa fa7(a6,b6,c6,s06,cy06);
stage1_fa fa8(a7,b7,c7,s07,cy07);
wire cin0,c10,c11,c12,c13,c14,c15,c16;
assign cin=0;
assign sin=0;
stage1_fa fa9(cy00,s01,cin,s1,c10);
stage1_fa fa10(cy01,s02,c10,s2,c20);
stage1_fa fa11(cy02,s03,c20,s3,c30);
stage1_fa fa12(cy03,s04,c30,s4,c40);
stage1_fa fa13(cy04,s05,c40,s5,c50);
stage1_fa fa14(cy05,s06,c50,s6,c60);
stage1_fa fa15(cy06,s07,c60,s7,c70);
stage1_fa fa16(cy07,sin,c70,s8,cout);
endmodule
