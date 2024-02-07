`timescale 1ns / 1ps
module jkflip_tb();
 reg j,k,en;
 wire q,q_bar;
 jkflipflop u1(j,k,en,q,q_bar);
initial begin 
j = 0;k = 0;en = 1;
#100;j = 0;k = 1;en = 1;
#100;j = 1;k = 0;en = 1;
#100;j = 1;k = 1;en = 1;
#100;j = 0;k = 1;en = 0;
#100;j = 1;k = 0;en = 0;
#100;j = 1;k = 1;en = 0;
#100;j = 0;k = 0;en = 1;
#100;j = 0;k = 1;en = 1;
#100;j = 1;k = 0;en = 1;
#100;j = 1;k = 1;en = 1;
end 
endmodule
