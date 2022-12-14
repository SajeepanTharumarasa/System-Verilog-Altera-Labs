module tff_reg (En, Clk, Clr,Q);

	input En, Clk, Clr;
	output reg Q;
	
	always @ (posedge Clk)
		if (Clr)
			Q = 0;
		else if (En)
			Q <= Q+1;

endmodule 
