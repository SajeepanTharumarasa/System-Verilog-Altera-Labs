module part2 (SW, HEX0, HEX1, HEX2, HEX3);

	input [17:0] SW;
	output [0:6] HEX0, HEX1, HEX2, HEX3;
	
	wire z;
	wire [3:0] M,A;
	assign A[3] = 0;
	
	comparator C0 (SW[3:0],z);
	circuit_A A0 (SW[3:0], A[2:0]);
	mux_4bit_2to1 M0 (z, SW[3:0],A,M);
	circuit_B B0(z, HEX1);
	b2d_7seg S0 (M, HEX0);
endmodule
