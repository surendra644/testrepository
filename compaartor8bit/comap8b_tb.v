`timescale 1ns / 1ps



module comap8b_tb();
reg [7:0] a,b;
reg  aeqbin,agtbin,altbin;
wire aeqb,agtb,altb;
compa8bit u1(a,b,aeqb,agtb,altb, aeqbin,agtbin,altbin);
initial
 begin
 aeqbin=1'b1;altbin=1'b0;agtbin=1'b0;a=8'b11000110;b=8'b00110011;#10;
 aeqbin=1'b1;altbin=1'b0;agtbin=1'b0;a=8'b11000110;b=8'b11110011;#10;
 aeqbin=1'b1;altbin=1'b0;agtbin=1'b0;a=8'b11000110;b=8'b11101111;#10;
 aeqbin=1'b1;altbin=1'b0;agtbin=1'b0;a=8'b11000110;b=8'b11000110;#10;
 $stop;
 end
endmodule
