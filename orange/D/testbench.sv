module d_tb;
    logic [3:0] A;
    logic P;
    logic D;
    d dut (.A(A),.P(P),.D(D));
    initial 
    begin
    for (int i = 0; i < 16; i++) begin
    A = i; #10;
    end
    $finish;
    end
endmodule
