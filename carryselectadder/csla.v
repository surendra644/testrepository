`timescale 1ns / 1ps
module ha(input a,b,output s,cy);
assign s=a^b;
assign cy=a&b;
endmodule
 module fa(input a,b,c,output s,cy);
 wire w1,w2,w3;
 ha u1(a,b,w1,w2);
 ha u2(w1,c,s,w3);
 or or_1(cy,w2,w3); 
endmodule

module mux(input a,b,en, output reg op);
always@(a,b,en)
 begin
  if(en)
   begin
   op=b;
   end
   else
   begin
   op=a;
   end 
 end
endmodule
module csla(input [3:0] a,b,input cin,output [3:0] s,output cout);
wire [9:0] w;
assign w[0]=0;
assign w[5]=1;
wire [7:0] si;
fa ut1(a[0],b[0],w[0],si[0],w[1]);
fa ut2(a[1],b[1],w[1],si[1],w[2]);
fa ut3(a[2],b[2],w[2],si[2],w[3]);
fa ut4(a[3],b[3],w[3],si[3],w[4]);

fa ut5(a[0],b[0],w[5],si[4],w[6]);
fa ut6(a[1],b[1],w[6],si[5],w[7]);
fa ut7(a[2],b[2],w[7],si[6],w[8]);
fa ut8(a[3],b[3],w[8],si[7],w[9]);

mux mux_1(si[0],si[4],cin,s[0]);
mux mux_2(si[1],si[5],cin,s[1]);
mux mux_3(si[2],si[6],cin,s[2]);
mux mux_4(si[3],si[7],cin,s[3]);

mux mux_5 (w[4],w[9],cin, cout);



endmodule


