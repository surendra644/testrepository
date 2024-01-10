`timescale 1ns / 1ps

module daada_tb1();
reg [3:0] a,b;
wire [7:0] sum;
dada4bit uut1(a,b,sum);
initial
  begin
  a=4'b0010;b=4'b1000;#10;
  a=4'b1010;b=4'b0111;#10;
  a=4'b1111;b=4'b0011;#10;
  a=4'b0011;b=4'b1110;#10;
  
  $stop;
  end
endmodule
