module d(input  logic [3:0] A,output logic P,output logic D);

    always_comb 
    begin
    if (A == 4'b0010 | A == 4'b0011 | A == 4'b0101 | A == 4'b0111 | A == 4'b1011 | A == 4'b1101) 
    P = 1; 
    else 
    P = 0;
    end
    
    always_comb 
    begin
    if (A % 3 == 0) 
    D = 1;
    else 
    D = 0;
    end
endmodule
