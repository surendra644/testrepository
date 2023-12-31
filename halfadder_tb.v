`timescale 1ns / 1ps



module halfadder_tb();

reg a,b;
wire s,cy;
halfadder_beh uut(a,b,s,cy);
initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$stop;
end
endmodule
