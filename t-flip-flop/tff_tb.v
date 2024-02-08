`timescale 1ns / 1ps



module tff_tb();
reg t,clk;
wire q,q_bar;
tff u1(t,clk,q,q_bar);
always #5 clk=~clk;
initial begin
  t=0;clk=1;#100;
  t=1;clk=1;#100;
  $stop;
  end
endmodule
