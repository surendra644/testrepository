`timescale 1ns / 1ps
module encoder(
    input [7:0] a,output  reg [2:0] y);
    always@(a)
    begin
    if(a==8'b10000000)y=3'b111;
    else if(a==8'b01000000)y=3'b110;
    else if(a==8'b00100000)y=3'b101;
    else if(a==8'b00010000)y=3'b100;
    else if(a==8'b00001000)y=3'b011;
    else if(a==8'b00000100)y=3'b010;
    else if(a==8'b00000010)y=3'b001;
    else y=3'b000;
    end
endmodule
