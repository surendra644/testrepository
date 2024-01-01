`timescale 1ns / 1ps
module fulladder_bev_tb();
reg a,b,c;//use wire as input everytime and for testbench use reg(non-ip) because to hold data
 wire s,cy;//doesnt store any data it shows the processed output only
 fulladder_beh uut(a,b,c,s,cy);
 initial 
     begin
    a=0;b=0;c=0;#10; 
    a=0;b=0;c=1;#10; 
    a=0;b=1;c=0;#10; 
    a=0;b=1;c=1;#10; 
    a=1;b=0;c=0;#10; 
    a=1;b=0;c=1;#10; 
    a=1;b=1;c=0;#10; 
    a=1;b=1;c=1;#10; 
    $stop; 
     end
endmodule
