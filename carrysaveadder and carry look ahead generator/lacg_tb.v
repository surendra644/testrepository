`timescale 1ns / 1ps
module lacg_tb();
wire s0,s1,s2,s3,cout;
reg a0,a1,a2,a3,b0,b1,b2,b3;
clag_1 uut( a0,a1,a2,a3,b0,b1,b2,b3, s0,s1,s2,s3,cout);
initial 
    begin
    a0=0;b0=0;a1=0;b1=0;a2=0;b2=0;a3=0;b3=0;#10;
    a0=1;b0=0;a1=1;b1=0;a2=1;b2=0;a3=1;b3=0;#10;
    a0=0;b0=1;a1=0;b1=1;a2=0;b2=1;a3=0;b3=1;#10;
    a0=1;b0=1;a1=1;b1=1;a2=1;b2=1;a3=1;b3=1;#10;
    a0=1;b0=0;a1=0;b1=0;a2=1;b2=1;a3=0;b3=0;#10;
    a0=0;b0=1;a1=1;b1=1;a2=0;b2=1;a3=1;b3=0;#10;
    $stop;
   end

endmodule
