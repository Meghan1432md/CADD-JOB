module h (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] Sum
);
    logic [4:0] carry;

    assign carry[0] = 0;

    generate
        for (genvar i = 0; i < 4; i++) begin
            assign Sum[i] = A[i] ^ B[i] ^ carry[i];
            assign carry[i + 1] = (A[i] & B[i]) | (A[i] & carry[i]) | (B[i] & carry[i]);
        end
    endgenerate
endmodule
