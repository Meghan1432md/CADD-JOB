module f_tb;
    logic [7:0] I;
    logic [2:0] Y;
    logic V;
    f dut (.I(I),.Y(Y),.V(V));
    initial 
    begin
        I = 8'b00000000;
        #10;I = 8'b00000001;
        #10;I = 8'b00000100;
        #10;I = 8'b00100000;
        #10;I = 8'b10000000;
        #10;I = 8'b10100000; 
        $finish;
    end
endmodule
