module paer4 (SW,LEDG,LEDR,HEX1,HEX0);

	input [17:0] SW;
	output [8:0] LEDR, LEDG;
	output [0:6] HEX1, HEX0;
	
	assign LEDR[8:0] = SW[8:0];
	
	wire e1,e2;
	
	comparator C0 (SW[3:0], e1);
	comparator C1 (SW[7:4], e2);
	
	assign LEDG[8] = e1 | e2;
	
	wire c1,c2,c3;
	wire [4:0] S;
	
	fulladder A0 (SW[0], SW[4], SW[8], S[0],c1);
	fulladder A1 (SW[1], SW[5], c1, S[1], c2);
	fulladder A2 (SW[2], SW[6], c2, S[2], c3);
	fulladder A3 (SW[3], SW[7], c3, S[3], S[4]);
	
	assign LEDG[4:0] = S[4:0];
	
	wire z;
	wire [3:0] A,M;
	
	comparator9 C2(S[4:0],z);
	circuitA AA (S[3:0], A);
	max_4bit_2to1 M0 (z, S[3:0], A,M);
	circuitB BB (z, HEX1);
	b2d_7seg S0 (M, HEX0);
	
	
endmodule
