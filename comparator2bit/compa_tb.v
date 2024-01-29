`timescale 1ns / 1ps



module compa_tb();
reg [1:0] a,b;
wire agtb,aeqb,altb;
compa2bit u1(a,b,agtb,aeqb,altb);
initial
begin
a=2'b00;b=2'b11;#10;
a=2'b11;b=2'b10;#10;
a=2'b11;b=2'b11;#10;


$stop;
end
endmodule
