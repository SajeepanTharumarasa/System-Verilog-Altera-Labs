module D_latch (Clk, D, Q, Clr);
  input D, Clk, Clr;
  output reg Q;
  always @ (D, Clk, Clr)
    if (Clk)
      Q = D;
	else
    if (Clr)
      Q = 0;
endmodule