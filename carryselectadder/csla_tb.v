`timescale 1ns / 1ps

module csla_tb();
wire [3:0] s;
wire cout;
reg [3:0] a,b;
reg cin;
 csla uut1(a,b,cin,s,cout);
initial
  begin
  a=4'b1100;b=4'b0011;cin=1;#10;
  a=4'b1100;b=4'b0011;cin=0;#10;
  a=4'b1110;b=4'b1011;cin=1;#10;
  a=4'b1101;b=4'b0111;cin=0;#10;
  a=4'b0100;b=4'b1011;cin=1;#10;
  a=4'b0111;b=4'b101;cin=0;#10;
  $stop;
  end
endmodule
