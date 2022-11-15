module part3 (SW, LEDG, LEDR);

	input [17:0]SW;
	output [8:0] LEDR, LEDG;
	
	assign LEDR[8:0] = SW[8:0];
	
	wire c1, c2 ,c3;
	
	full_adder A0 (SW[0], SW[4], SW[8], LEDG[0], c1);
	full_adder A1 (SW[1], SW[5], c1, LEDG[1], c2);
	full_adder A2 (SW[2], SW[6], c2, LEDG[2], c3);
	full_adder A3 (SW[3], SW[7], c3, LEDG[3], LEDG[4]);
	
endmodule
