module tb_bcd_adder;
    logic [7:0] A, B;
    logic Cin;
    logic [7:0] S;
    logic Cout;

    bcd_adder uut (.A(A),.B(B),
        .Cin(Cin),.S(S),.Cout(Cout));

    initial begin
        A = 8'b00010001; B = 8'b00010010; Cin = 0; #10;
        A = 8'b00100001; B = 8'b00001001; Cin = 1; #10;
        A = 8'b00100100; B = 8'b00000001; Cin = 0; #10;
        $stop;
    end
endmodule
