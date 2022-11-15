module flippy_floppy (Clk, D, Q);

	input Clk, D;
	output Q;
	
	wire Qm;
	
	D_latch D0 (~Clk, D, Qm);
	D_latch D1 (Clk, Qm,Q);

endmodule 