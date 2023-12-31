`timescale 1ns / 1ps



module half_sub_tb();
reg a,b;//inputs
wire dif,bw;//outputs
half_sub uut(a,b,dif,bw);
initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$stop;
end
endmodule
