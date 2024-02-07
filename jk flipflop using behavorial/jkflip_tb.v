`timescale 1ns / 1ps



module jkflip_tb();
reg j,k,en;
 wire q,q_bar;
 jkflipflop u1(en,j,k,q,q_bar);
always #5 en = ~en;  
 initial begin 
j = 0;k = 0;en = 1;
#100;j = 0;k = 1;en = 1;
#100;j = 1;k = 0;en = 1;
#100;j = 1;k = 1;en = 1;
#100 j = 0;k = 0;en = 1;
#100;j = 0;k = 1;en = 1;
#100;j = 1;k = 0;en = 1;
#100;j = 1;k = 1;en = 1;
 #100 j = 0;k = 0;en = 1;
#100;j = 0;k = 1;en = 1;
#100;j = 1;k = 0;en = 1;
#100;j = 1;k = 1;en = 1;
end 
endmodule
