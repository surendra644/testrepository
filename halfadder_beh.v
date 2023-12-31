`timescale 1ns / 1ps
module halfadder_beh(
    input a,b,
    output s,cy
    );
    
 assign s=a ^b;
 assign cy=a & b;
endmodule
