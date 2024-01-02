`timescale 1ns / 1ps
module csa_tb();
reg a0,a1,a2,a3,a4,a5,a6,a7,b0,b1,b2,b3,b4,b5,b6,b7,c0,c1,c2,c3,c4,c5,c6,c7;
wire s0,s1,s2,s3,s4,s5,s6,s7,s8,cout;
csa uut1(a0,a1,a2,a3,a4,a5,a6,a7,b0,b1,b2,b3,b4,b5,b6,b7,c0,c1,c2,c3,c4,c5,c6,c7,s0,s1,s2,s3,s4,s5,s6,s7,s8,cout);
initial
   begin
   a0=1;a1=0;a2=1;a3=0;a4=1;a5=0;a6=1;a7=0;#10;
   b0=0;b1=1;b2=0;b3=1;b4=0;b5=1;b6=0;b7=1;#10;
   c0=0;c1=0;c2=1;c3=0;c4=0;c5=0;c6=1;c7=1;#10;
   a0=1;a1=1;a2=1;a3=0;a4=1;a5=0;a6=1;a7=0;#10;
   b0=0;b1=1;b2=0;b3=1;b4=1;b5=1;b6=0;b7=1;#10;
   c0=0;c1=0;c2=1;c3=0;c4=0;c5=1;c6=1;c7=1;#10;
   a0=1;a1=1;a2=1;a3=0;a4=1;a5=0;a6=1;a7=0;#10;
   b0=0;b1=1;b2=0;b3=1;b4=1;b5=1;b6=0;b7=1;#10;
   c0=0;c1=0;c2=1;c3=0;c4=0;c5=1;c6=1;c7=1;#10;
   a0=1;a1=0;a2=1;a3=0;a4=1;a5=0;a6=1;a7=0;#10;
   b0=1;b1=1;b2=0;b3=1;b4=0;b5=1;b6=0;b7=1;#10;
   c0=0;c1=1;c2=1;c3=0;c4=0;c5=0;c6=1;c7=1;#10;
   
   
   
   
   $stop;
   end
endmodule
