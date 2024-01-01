`timescale 1ns / 1ps



module fulladder_tb();
reg a,b,c;
wire sum,cy;
fulladder fa_tb(a,b,c,sum,cy);
initial begin
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
$stop;
end
endmodule
