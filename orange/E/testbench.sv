module e_tb;
    logic [3:0] I;
    logic [1:0] Y;
    logic V;           
    e dut (.I(I),.Y(Y),.V(V));
    initial 
    begin
            I = 4'b0000;
        #10;I = 4'b0001;
        #10;I = 4'b0010;
        #10;I = 4'b0100;
        #10;I = 4'b1000;
        #10;I = 4'b1010;
        $finish; 
    end
endmodule
