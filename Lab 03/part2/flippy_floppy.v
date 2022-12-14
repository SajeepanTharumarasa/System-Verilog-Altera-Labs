module flippy_floppy (Clk,D,Q);

	input Clk,D;
	output Q;
	
	wire S, R;
	
	assign S= D;
	assign R = ~D;
	
	wire R_g, S_g, Qa, Qb/*synthesis keep*/;
	
	assign R_g = R & Clk;
	assign S_g = S & Clk;
	assign Qa = ~(R_g | Qb);
	assign Qb = ~(S_g | Qa);
	
	assign Q = Qa;
	
endmodule


	