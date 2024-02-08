`timescale 1ns / 1ps
module dff_tb();
reg d,en;
wire q,qbar;
dff u1(d,en,q,qbar);
always #5 en = ~en; 
initial begin 
d=0;en=1;#100;
d=1;en=1;#100;
d=0;en=0;#100;
d=1;en=0;#100;
$stop;
end
endmodule
