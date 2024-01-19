`timescale 1ns / 1ps



module prio(input [7:0] a,output  reg [2:0] y);
always@(a)
 
 begin
 if(a==8'b00000000) y=3'b000;
  else if(a[7:1]==7'b0000001 && a[0]==1'b1)  y=3'b001;
 else if(a[7:2]==6'b000001 && a[1:0]==2'b11) y=3'b010;
 else if(a[7:3]==5'b00001 && a[2:0]==3'b111) y=3'b011;
 else if(a[7:4]==4'b0001 && a[3:0]==4'b1111) y=3'b100;
 else if(a[7:5]==3'b001 && a[4:0]==5'b11111) y=3'b101;
 else if(a[7:6]==2'b01 && a[5:0]==6'b111111) y=3'b110;
 else if(a[7]==1'b1 && a[6:0]==7'b1111111) y=3'b111;
 end
endmodule
