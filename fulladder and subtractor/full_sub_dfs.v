`timescale 1ns / 1ps
module full_sub_dfs(
    input a,b,c,
    output dif,bw
    );
    wire c0;
    assign dif=(a^b)^c;
     xnor xnor_1(c0,a,b);
     assign bw=(c & c0)|(!a & b);
endmodule
