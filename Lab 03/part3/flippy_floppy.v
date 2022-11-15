module flippy_floppy (Clk, D, Q);
	
	input Clk, D;
	output Q;
	
	wire Qm;
	mylatch D0 (~Clk, D,Qm);
	mylatch D1 (Clk, D, Qm);
	
endmodule 

