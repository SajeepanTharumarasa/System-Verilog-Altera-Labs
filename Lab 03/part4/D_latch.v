module D_latch (Clk, D,Q);

	input D, Clk;
	output reg Q;
	
	always @ (D,Clk);
	begin
		if(Clk)
			Q=D;
	end

endmodule
