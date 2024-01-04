`timescale 1ns / 1ps



module adder_sub_tb();
reg [3:0] a,b;
reg en;
wire [3:0] s;
wire cout;
add_sub uut(a,b,en,s,cout);
initial 
  begin
  en=0;a=4'b0010;b=4'b1100;#10;
  en=1;a=4'b1001;b=4'b0110;#10;
  en=0;a=4'b1110;b=4'b1101;#10;
  en=1;a=4'b1011;b=4'b0111;#10;
  en=0;a=4'b1110;b=4'b1100;#10;
  en=1;a=4'b1001;b=4'b0111;#10;
  $stop;
  end
endmodule
