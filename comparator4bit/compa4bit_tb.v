`timescale 1ns / 1ps



module compa4bit_tb();
reg [3:0] a,b;
wire agtb,altb,aeqb;
 compa4bit u1(a,b,agtb,altb,aeqb);
 initial
 begin
 a=4'b0010;b=4'b1100;#10;
 a=4'b0110;b=4'b1100;#10; 
  a=4'b0010;b=4'b0100;#10;
  a=4'b1110;b=4'b1101;#10;
  a=4'b0010;b=4'b0010;#10;
 $stop;
 end
endmodule
