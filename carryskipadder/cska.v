`timescale 1ns / 1ps
module ha(input a,b,output s,cy);
assign s=a^b;
assign cy=a&b;
endmodule
module fa(input a,b,c,output s,cy);
wire w1,w2,w3;
ha ha1(a,b,w1,w2);
ha ha2(w1,c,s,w3);
or or_1(cy,w2,w3);
endmodule
module mux(input a,b,en,output reg sel);

always@(a or b or en)
begin
if(en)
   begin 
   sel=a;  
   end
   else
   begin
   sel=b;
   end
end

endmodule
module cska(input [3:0] a,b,output [3:0] s,output cout);
wire [4:0] w;
wire [3:0] p;
wire c2;
assign w[0]=0;
fa fa1(a[0],b[0],w[0],s[0],w[1]);
fa fa2(a[1],b[1],w[1],s[1],w[2]);
fa fa3(a[2],b[2],w[2],s[2],w[3]);
fa fa4(a[3],b[3],w[3],s[3],w[4]);
xor xor_1(p[0],a[0],b[0]);
xor xor_2(p[1],a[1],b[1]);
xor xor_3(p[2],a[2],b[2]);
xor xor_4(p[3],a[3],b[3]);
and and_1(c2,p[0],p[1],p[2],p[3]);
mux mux_1(w[0],w[4],c2,cout);
endmodule
