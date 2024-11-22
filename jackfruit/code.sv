module fp_multiplier (
  input [31:0] a,
  input [31:0] b,
  output [31:0] result
);
  wire sign_a, sign_b, sign_result;
  wire [7:0] exp_a, exp_b, exp_result;
  wire [23:0] mant_a, mant_b, mant_result;
  wire [47:0] mant_mult;
  wire [7:0] exp_sum;

  assign sign_a = a[31];
  assign sign_b = b[31];
  assign exp_a = a[30:23];
  assign exp_b = b[30:23];
  assign mant_a = {1'b1, a[22:0]};
  assign mant_b = {1'b1, b[22:0]};

  assign sign_result = sign_a ^ sign_b;
  assign exp_sum = exp_a + exp_b - 8'd127;
  assign mant_mult = mant_a * mant_b;

  assign mant_result = mant_mult[47] ? mant_mult[46:24] : mant_mult[45:23];
  assign exp_result = mant_mult[47] ? exp_sum + 1 : exp_sum;

  assign result = {sign_result, exp_result, mant_result[22:0]};
endmodule
