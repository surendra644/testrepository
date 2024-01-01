


module fulladder_beh(a,b,c,s,cy);
  input  wire a,b,c;
   output reg s,cy;//for storing values reg is used so we used reg for outputs
    
  always @(a or b or c)
  begin
    if(a==0 && b==0 && c==0) 
    begin
    s=0;// for storing values use reg datatype
    cy=0;  
    end
    if(a==0 && b==0 && c==1) 
    begin
    s=1;// for storing values use reg datatype
    cy=0;  
    end
    if(a==0 && b==1 && c==0) 
    begin
    s=0;// for storing values use reg datatype
    cy=0;  
    end
    if(a==0 && b==1 && c==1) 
    begin
    s=0;// for storing values use reg datatype
    cy=1;  
    end
    if(a==1 && b==0 && c==0) 
    begin
    s=1;// for storing values use reg datatype
    cy=0;  
    end
    if(a==1 && b==0 && c==1) 
    begin
    s=0;// for storing values use reg datatype
    cy=1;  
    end
    if(a==1 && b==1 && c==0) 
    begin
    s=0;// for storing values use reg datatype
    cy=1;  
    end
    if(a==1 && b==1 && c==1) 
    begin
    s=1;// for storing values use reg datatype
    cy=1;  
    end
  end    
endmodule
