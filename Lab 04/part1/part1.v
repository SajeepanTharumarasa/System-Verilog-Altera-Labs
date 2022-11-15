module part1 (SW, KEY, LEDG, HEX3, HEX2, HEX1, HEX0);

	input [3:0] SW;
	input [3:0] KEY;
	output [7:0] LEDG;
	output [0:6] HEX3, HEX2, HEX1, HEX0;
	
	wire [7:0] Q;
	wire [3:0] Q2;
	
	counter_8bit C0 (SW[1], KEY[0], SW[0], Q);
	
	hex_ssd H0 (Q[3:0], HEX0);
	hex_ssd H1 (Q[7:4], HEX1);
	
endmodule 
	
	