`timescale 1ns / 1ps
module mux(input a,b,en, output reg y);
always@(a,b,en)
begin
if(en)
y=b;
else
y=a;
end
endmodule
module bgmux(input a, b,output [5:0] y);
wire [2:0] w;
assign w[0]=0;
assign w[1]=1;
assign w[2]=~b;
mux andgate(w[0],b,a,y[0]);
mux orgate(b,w[1],a,y[1]);
mux exor (w[2],b,a,y[2]);
mux exnor(b,w[2],a,y[3]);
mux nandg(w[1],w[2],a,y[4]);
mux norg(w[2],w[0],a,y[5]);
endmodule
