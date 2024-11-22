module i (input logic clk,input logic reset,
            input logic A,input logic B,output logic Q);
    
    typedef enum logic [1:0] {S0, S1, S2} state_t;
    state_t current_state, next_state;

    always_comb begin
        case (current_state)
            S0: next_state = A ? S0 : S1;
            S1: next_state = B ? S2 : S0;
            S2: next_state = S0;
        endcase
    end

    always_comb Q = (current_state == S2);

    always_ff @(posedge clk or posedge reset)
        if (reset) current_state <= S0;
        else current_state <= next_state;
endmodule
