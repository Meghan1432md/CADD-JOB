module h_tb;
    logic [3:0] A, B;
    logic [3:0] Sum;

    h uut (.A(A),.B(B),.Sum(Sum));

    initial 
      begin
        A = 4'b0000; B = 4'b0000;
        #10 A = 4'b0101; B = 4'b0011;
        #10 A = 4'b1111; B = 4'b0001;
        #10 A = 4'b1001; B = 4'b0110;
        #10 A = 4'b1100; B = 4'b1010;
        #10 $stop;
    end
endmodule
