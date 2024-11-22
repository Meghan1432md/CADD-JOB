module j (input logic clk,input logic reset,output logic [2:0] gray_code);
    
    logic [2:0] binary_counter;
    
    always_ff @(posedge clk or posedge reset) 
    begin
        if (reset)
        binary_counter <= 3'b000;
        else
        binary_counter <= binary_counter + 1;
    end
    
    assign gray_code = binary_counter ^ (binary_counter >> 1);

endmodule
