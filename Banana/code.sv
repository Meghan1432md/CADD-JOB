module bcd_adder (input  logic [7:0] A,input  logic [7:0] B,
    input  logic Cin,output logic [7:0] S,output logic Cout);
    
    logic [4:0] lsum, usum;
    logic [3:0] nibble0_sum, nibble1_sum;
    logic       carry0, carry1;

    assign lsum = {1'b0, A[3:0]} + {1'b0, B[3:0]} + Cin;
    assign carry0 = (lsum[4] | (lsum[3:0] > 4'd9));
    assign nibble0_sum = carry0 ? (lsum[3:0] + 4'd6) : lsum[3:0];

    assign usum = {1'b0, A[7:4]} + {1'b0, B[7:4]} + carry0;
    assign carry1 = (usum[4] | (usum[3:0] > 4'd9));
    assign nibble1_sum = carry1 ? (usum[3:0] + 4'd6) : usum[3:0];

    assign S = {nibble1_sum, nibble0_sum};
    assign Cout = carry1;
endmodule
