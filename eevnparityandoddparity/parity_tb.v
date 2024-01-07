`timescale 1ns / 1ps

module parity_tb();
reg [3:0] a,b;
wire [3:0] peven,podd;
par_gen uut(a,b,peven,podd);
initial
  begin
  a=4'b0010;b=4'b1001;#10;
  a=4'b1110;b=4'b1001;#10;
  a=4'b0010;b=4'b1101;#10;
  a=4'b1010;b=4'b1001;#10;
  a=4'b0110;b=4'b1011;#10;
  $stop;
  end
endmodule
