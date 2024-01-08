`timescale 1ns / 1ps


module mul16_tb();
wire [15:0] s;
reg [7:0] a,b;
mul_16 uut(a,b,s);
initial 
  begin
  a=8'b00110010;b=8'b11000010;#10;
   a=8'b10;b=8'b11;#10;
   a=8'b10000;b=8'b101;#10;
   a=8'b00100;b=8'b1110;#10;
  $stop;
  end
endmodule
