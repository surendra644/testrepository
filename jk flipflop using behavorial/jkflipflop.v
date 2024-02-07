`timescale 1ns / 1ps


module jkflipflop(input clk,j,k,output reg q,output q_bar);
initial q=0;
assign q_bar=~q;
always@(posedge clk)
  case({j,k})
   2'b00:q=q;
   2'b01:q=0;
   2'b10:q=1;
   2'b11:q=~q;
   endcase
endmodule
