module j_tb;
    logic clk, reset;
    logic [2:0] gray_code;

    j uut (.clk(clk),.reset(reset),.gray_code(gray_code));

    always #5 clk = ~clk;

    initial begin
        clk = 0; reset = 1;
        #10 reset = 0;
        #50 
        $stop;
    end
endmodule
