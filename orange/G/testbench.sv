module g_tb;
    logic [2:0] A;
    logic [7:0] Y;
    g dut (.A(A),.Y(Y));
    initial begin
            A = 3'b000;
        #10;A = 3'b001;
        #10;A = 3'b010;
        #10;A = 3'b011;
        #10;A = 3'b100;
        #10;A = 3'b101;
        #10;A = 3'b110;
        #10;A = 3'b111; 
        $finish;
    end
endmodule
