module flippyfloppy (Clk, D, Q, Clr);
  input Clk, D, Clr;
  output Q;
  
  wire Qm;
  D_latch D0 (~Clk, D, Qm, Clr);
  D_latch D1 (Clk, Qm, Q, Clr);
endmodule