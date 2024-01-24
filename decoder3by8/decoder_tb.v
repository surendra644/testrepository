`timescale 1ns / 1ps



module decoder_tb();
reg [2:0] a;
wire [7:0] y;
reg en;
decoder u1(a,y,en);
initial
  begin
  en=1;a=3'b000;#10;
  en=1;a=3'b001;#10;
  en=1;a=3'b010;#10;
  en=1;a=3'b011;#10;
  en=1;a=3'b100;#10;
  en=1;a=3'b101;#10;
  en=1;a=3'b110;#10;
  en=1;a=3'b111;#10;
  en=0;a=3'b001;#10;
  en=0;a=3'b111;#10;
  
  
  $stop;
  end
endmodule
