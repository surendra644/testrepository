`timescale 1ns / 1ps



module prio_tb();
//reg en;
reg [7:0] a;
wire [2:0] y;
prio u1(a,y);
initial
 begin
 a=8'b00000000;#10;
 a=8'b00000011;#10;
 a=8'b00000111;#10;
 a=8'b00001111;#10;
 a=8'b00011111;#10;
 a=8'b00111111;#10;
 a=8'b01111111;#10;
 a=8'b11111111;#10;
 
 $stop;
 end
endmodule
