module e(input  logic [3:0] I,output logic [1:0] Y,output logic V);

    always_comb begin
    if (I[3]) 
    begin
    Y = 2'b11;
    V = 1;
    end 
    else if (I[2]) 
    begin
    Y = 2'b10;
    V = 1;
    end 
    else if (I[1]) 
    begin
    Y = 2'b01;
    V = 1;
    end 
    else if (I[0]) 
    begin
    Y = 2'b00;
    V = 1;
    end 
    else 
    begin
    Y = 2'b00;
    V = 0;
    end
    end
endmodule
