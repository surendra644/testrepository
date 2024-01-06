`timescale 1ns / 1ps
module cska_tb( );
reg [3:0] a,b;
wire [3:0] s;
wire cout;
cska uut(a,b,s,cout);
initial
  begin
  a=4'b0010;b=4'b0111;#10;
  a=4'b0100;b=4'b1100;#10;
  a=4'b1111;b=4'b1001;#10;
  a=4'b0011;b=4'b1010;#10;
  $stop;
  
  end
endmodule
