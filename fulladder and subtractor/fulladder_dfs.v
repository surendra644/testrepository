`timescale 1ns / 1ps
module fulladder_dfs(input a,b,c,output s,cy);
assign s=(a^b)^c;
assign cy=(a & b &c);
endmodule
