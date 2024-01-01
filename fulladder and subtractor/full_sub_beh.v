`timescale 1ns / 1ps
module full_sub_beh(input wire a,b,c,output reg dif,bw); 
   always @(a or b or c)
   begin
       if(a==0 && b==0 && c==0)
       begin
       dif=0;
       bw=0;  
       end
       if(a==0 && b==0 && c==1)
       begin
       dif=1;
       bw=1;  
       end
       if(a==0 && b==1 && c==0)
       begin
       dif=1;
       bw=1;  
       end
       if(a==0 && b==1 && c==1)
       begin
       dif=0;
       bw=1;  
       end
       if(a==1 && b==0 && c==0)
       begin
       dif=1;
       bw=0;  
       end
       if(a==1 && b==0 && c==1)
       begin
       dif=0;
       bw=0;  
       end
       if(a==1 && b==1 && c==0)
       begin
       dif=0;
       bw=0;  
       end
       if(a==1 && b==1&& c==1)
       begin
       dif=1;
       bw=1;  
       end  
   end
endmodule
