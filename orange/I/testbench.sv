module i_tb;
    logic clk, reset, A, B, Q;
    i uut (.clk(clk), .reset(reset), .A(A), .B(B), .Q(Q));

    always #5 clk = ~clk;

    initial begin
        clk = 0; reset = 1; A = 0; B = 0;
        #10 reset = 0; 
        #10 A = 0; 
        #10 B = 1;
        #10 B = 0;
        #10 A = 1; 
        #10 A = 0; 
        #10 B = 1;
        #10 reset = 1;
        $stop;
    end
endmodule
