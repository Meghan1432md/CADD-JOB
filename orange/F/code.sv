module f(input  logic [7:0] I,output logic [2:0] Y,output logic V);
    always_comb 
    begin
    if (I[7]) 
    begin
    Y = 3'b111;
    V = 1;
    end 
    else if (I[6]) 
    begin
    Y = 3'b110;
    V = 1;
    end
    else if (I[5]) 
    begin
    Y = 3'b101;
    V = 1;
    end 
    else if (I[4]) 
    begin
    Y = 3'b100;
    V = 1;
    end 
    else if (I[3]) 
    begin
    Y = 3'b011;
    V = 1;
    end 
    else if (I[2]) 
    begin
    Y = 3'b010;
    V = 1;
    end 
    else if (I[1]) 
    begin
    Y = 3'b001;
    V = 1;
    end 
    else if (I[0]) 
    begin
    Y = 3'b000;
    V = 1;
    end 
    else 
    begin
    Y = 3'b000;
    V = 0;
    end
    end
endmodule
