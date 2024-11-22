module a_tb;
  logic a, b, c, d;
  logic y;
  a uut(.a(a),.b(b),
    .c(c),.d(d),.y(y));
  initial 
  begin
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    
    #10 a=1 ; b=0 ; c=1 ; d=1;
    #10 a=0 ; b=0 ; c=1 ;d=1;
    #10 a=1; b=0; c=0 ; d=1;
    $finish;
  end
endmodule
