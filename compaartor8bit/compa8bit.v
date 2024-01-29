`timescale 1ns / 1ps
module compa4b(input [3:0] a,b,output reg  aeqb,agtb,altb,input aeqbin,agtbin,altbin);
always@(*)
 begin
 agtb=0;
 altb=0;
 aeqb=0;
 if(a>b) agtb=1;
 else if(a<b) altb=1;
 else if(a==b)
  begin
   if(agtbin==1 && altbin==0 && aeqbin==0) agtb=1;
   else if(agtbin==0 && altbin==1 && aeqb==0) altb=1;
   else if(agtbin==0 && altbin==0 && aeqbin==1) aeqb=1;
  end 
 end
endmodule


module compa8bit(input [7:0] a,b,output aeqb,agtb,altb,input aeqbin,agtbin,altbin);
   wire [5:0] w;
   compa4b u1(a[3:0],b[3:0],w[3],w[4],w[5],aeqbin,agtbin,altbin);
   compa4b u2(a[7:4],b[7:4],aeqb,agtb,altb,w[3],w[4],w[5]);
endmodule
