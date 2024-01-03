`timescale 1ns / 1ps



module ripple_tb();
reg [3:0] a,b;
wire [3:0] s;
wire cout;
rip_adder uut(a,b,s,cout);
initial
    begin
    a=4'b0010;b=4'b0100;#10; 
    a=4'b0110;b=4'b0101;#10;
    a=4'b1010;b=4'b1100;#10;
    a=4'b1011;b=4'b0111;#10;
    $stop;
    end
endmodule
