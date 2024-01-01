`timescale 1ns / 1ps
module half_sub(input a,b, output dif,bw);
assign dif=a^b;
assign bw=(!a) & b;
endmodule


module full_sub(
    input a,b,c,
    output dif,bw);
    
    
    wire w1,w2,w3;
    half_sub sb0(a,b,w1,w2);
    half_sub sb1(w1,c,dif,w3);
    or or_1(bw,w2,w3);
endmodule
