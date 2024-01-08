`timescale 1ns / 1ps
module ha( input a,b,output s,cy);
assign s=a^b;
assign cy=a&b;
endmodule

module fa(input a,b,c,output s,cy);
wire [2:0] w;
ha u1(a,b,w[0],w[1]);
ha u2(w[0],c,s,w[2]);
or or_1(cy,w[1],w[2]);
endmodule

module and_0(input a,b,output y0);
assign y0=a&b;
endmodule
module and_1(input a,b,c,d,output y0,y1);
assign y0=a&b;
assign y1=c&d;
endmodule
module and_2(input a,b,c,d,e,f,output y0,y1,y2);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
endmodule
module and_3(input a,b,c,d,e,f,g,h,output y0,y1,y2,y3);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
endmodule
module and_4(input a,b,c,d,e,f,g,h,i,j,output y0,y1,y2,y3,y4);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
endmodule
module and_5(input a,b,c,d,e,f,g,h,i,j,k,l,output y0,y1,y2,y3,y4,y5);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
assign y5=k&l;
endmodule
module and_6(input a,b,c,d,e,f,g,h,i,j,k,l,m,n,output y0,y1,y2,y3,y4,y5,y6);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
assign y5=k&l;
assign y6=m&n;
endmodule
module and_7(input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,output y0,y1,y2,y3,y4,y5,y6,y7);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
assign y5=k&l;
assign y6=m&n;
assign y7=o&p;
endmodule
module and_8(input a,b,c,d,e,f,g,h,i,j,k,l,m,n,output y0,y1,y2,y3,y4,y5,y6);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
assign y5=k&l;
assign y6=m&n;
endmodule
module and_9(input a,b,c,d,e,f,g,h,i,j,k,l,output y0,y1,y2,y3,y4,y5);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
assign y5=k&l;
endmodule
module and_10(input a,b,c,d,e,f,g,h,i,j,output y0,y1,y2,y3,y4);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
assign y4=i&j;
endmodule
module and_11(input a,b,c,d,e,f,g,h,output y0,y1,y2,y3);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
assign y3=g&h;
endmodule
module and_12(input a,b,c,d,e,f,output y0,y1,y2);
assign y0=a&b;
assign y1=c&d;
assign y2=e&f;
endmodule
module and_13(input a,b,c,d,output y0,y1);
assign y0=a&b;
assign y1=c&d;
endmodule
module and_14(input a,b,output y0);
assign y0=a&b;
endmodule
module mul_16(input [8:0] a,b,output [15:0] s);
wire  [63:0] w;
wire [13:0] c;
wire [35:0] sin;
wire [35:0] cin;
assign c[0]=0;
and_0 ut0(a[0],b[0],s[0]);
and_1 ut1(a[1],b[0],a[0],b[1],w[1],w[2]);
and_2 ut2(a[2],b[0],a[1],b[1],a[0],b[2],w[3],w[4],w[5]);
and_3 ut3(a[3],b[0],a[2],b[1],a[1],b[2],a[0],b[3],w[6],w[7],w[8],w[9]);
and_4 ut4(a[4],b[0],a[3],b[1],a[2],b[2],a[1],b[3],a[0],b[4],w[10],w[11],w[12],w[13],w[14]);
and_5 ut5(a[5],b[0],a[4],b[1],a[3],b[2],a[2],b[3],a[1],b[4],a[0],b[5],w[15],w[16],w[17],w[18],w[19],w[20]);
and_6 ut6(a[6],b[0],a[5],b[1],a[4],b[2],a[3],b[3],a[2],b[4],a[1],b[5],a[0],b[6],w[21],w[22],w[23],w[24],w[25],w[26],w[27]);
and_7 ut7(a[7],b[0],a[6],b[1],a[5],b[2],a[4],b[3],a[3],b[4],a[2],b[5],a[1],b[6],a[0],b[7],w[28],w[29],w[30],w[31],w[32],w[33],w[34],w[35]);
and_8 ut8(a[7],b[1],a[6],b[2],a[5],b[3],a[4],b[4],a[3],b[5],a[2],b[6],a[1],b[7],w[36],w[37],w[38],w[39],w[40],w[41],w[42]);
and_9 ut9(a[7],b[2],a[6],b[3],a[5],b[4],a[4],b[5],a[3],b[6],a[2],b[7],w[43],w[44],w[45],w[46],w[47],w[48]);
and_10 ut10(a[7],b[3],a[6],b[4],a[5],b[5],a[4],b[6],a[3],b[7],w[49],w[50],w[51],w[52],w[53]);
and_11 ut11(a[7],b[4],a[6],b[5],a[5],b[6],a[4],b[7],w[54],w[55],w[56],w[57]);
and_12 ut12(a[7],b[5],a[6],b[6],a[5],b[7],w[58],w[59],w[60]);
and_13 ut13(a[7],b[6],a[6],b[7],w[61],w[62]);
and_14 ut14(a[7],b[7],w[63]);

ha fa1 (w[1],w[2],s[1],c[1]);//stage 2

fa fa2 (w[3],w[4],c[1],sin[0],cin[0]);//stage3
fa fa3 (sin[0],w[5],cin[0],s[2],c[2]);//stage3

fa fa4 (w[6],w[7],c[2],sin[1],cin[1]);//stage 4
fa fa5 (sin[1],w[8],cin[1],sin[2],cin[2]);//stage 4
fa fa6 (sin[2],w[9],cin[2],s[3],c[3]);//stage 4

fa fa7(w[10],w[11],c[3],sin[3],cin[3]);//stage5
fa fa8(w[12],sin[3],cin[3],sin[4],cin[4]);
fa fa9(w[13],sin[4],cin[4],sin[5],cin[5]);
fa fa10(w[14],sin[5],cin[5],s[4],c[4]);

fa fa11(w[15],w[16],c[4],sin[6],cin[6]);//stage 6
fa fa12(w[17],sin[6],cin[6],sin[7],cin[7]);
fa fa13(w[18],sin[7],cin[7],sin[8],cin[8]);
fa fa14(w[19],sin[8],cin[8],sin[9],cin[9]);
fa fa15(w[20],sin[9],cin[9],s[5],c[5]);

fa fa16(w[21],w[22],c[5],sin[10],cin[10]);//stage 7
fa fa17(w[23],sin[10],cin[10],sin[11],cin[11]);
fa fa18(w[24],sin[11],cin[11],sin[12],cin[12]);
fa fa19(w[25],sin[12],cin[12],sin[13],cin[13]);
fa fa20(w[26],sin[13],cin[13],sin[14],cin[14]);
fa fa21(w[27],sin[14],cin[14],s[6],c[6]);

fa fa22(w[28],w[29],c[6],sin[15],cin[15]);//stage8
fa fa23(w[30],sin[15],cin[15],sin[16],cin[16]);
fa fa24(w[31],sin[16],cin[16],sin[17],cin[17]);
fa fa25(w[32],sin[17],cin[17],sin[18],cin[18]);
fa fa26(w[33],sin[18],cin[18],sin[19],cin[19]);
fa fa27(w[34],sin[19],cin[19],sin[20],cin[20]);
fa fa28(w[35],sin[20],cin[20],s[7],c[7]);

fa fa29(w[36],w[37],c[7],sin[21],cin[21]);//stage 9
fa fa30(w[38],sin[21],cin[21],sin[22],cin[22]);
fa fa31(w[39],sin[22],cin[22],sin[23],cin[23]);
fa fa32(w[40],sin[23],cin[23],sin[24],cin[24]);
fa fa33(w[41],sin[24],cin[24],sin[25],cin[25]);
fa fa34(w[42],sin[25],cin[25],s[8],c[8]);


fa fa35(w[43],w[44],c[8],sin[26],cin[26]);//stahe 10
fa fa36(w[45],sin[26],cin[26],sin[27],cin[27]);
fa fa37(w[46],sin[27],cin[27],sin[28],cin[28]);
fa fa38(w[47],sin[28],cin[28],sin[29],cin[29]);
fa fa39(w[48],sin[29],cin[29],s[9],c[9]);

fa fa40(w[49],w[50],c[9],sin[30],cin[30]);//stage 11
fa fa41(w[51],sin[30],cin[30],sin[31],cin[31]);
fa fa42(w[52],sin[31],cin[31],sin[32],cin[32]);
fa fa43(w[53],sin[32],cin[32],s[10],c[10]);

fa fa44(w[54],w[55],c[10],sin[33],cin[33]);//stage 12
fa fa45(w[56],sin[33],cin[33],sin[34],cin[34]);
fa fa46(w[57],sin[34],cin[34],s[11],c[11]);

fa fa47(w[58],w[59],c[11],sin[35],cin[35]);//stage 13
fa fa48(w[60],sin[35],cin[35],s[12],c[12]);

fa fa49(w[61],w[62],c[12],s[13],c[13]);//stage 14

ha ha3(w[63],c[13],s[14],s[15]);//stage 15


endmodule
