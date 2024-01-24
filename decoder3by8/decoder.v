`timescale 1ns / 1ps



module decoder(input [2:0] a,output  reg [7:0] y,input en);
always@(a,en)
begin
if(en)
begin
     if(a==3'b000) y=8'b10000000;
else if(a==3'b001) y=8'b01000000;
else if(a==3'b010) y=8'b00100000;
else if(a==3'b011) y=8'b00010000;
else if(a==3'b100) y=8'b00001000;
else if(a==3'b101) y=8'b00000100;
else if(a==3'b110) y=8'b00000010;
else if(a==3'b111) y=8'b00000001;
end
else
begin
y=8'b00000000;
end
end
endmodule
