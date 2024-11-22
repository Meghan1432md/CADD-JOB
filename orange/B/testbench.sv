module b_tb;
    logic A, B, C, D, E;
    logic Y;

    b uut (.A(A),.B(B),.C(C),.D(D),.E(E),.Y(Y));

    initial 
    begin
            A = 0; B = 0; C = 0; D = 0; E = 0;
        #10 A = 1; B = 1; C = 1; D = 0; E = 0;
        #10 A = 1; B = 0; C = 0; D = 1; E = 1;
        #10 A = 0; B = 1; C = 1; D = 1; E = 1;
        #10 A = 1; B = 1; C = 0; D = 1; E = 0;
        #10 $finish;
    end
endmodule
