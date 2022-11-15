module part4 (SW, LEDR, LEDG);

	input [1:0] SW;
	output [17:0] LEDR, LEDG;
	
	assign LEDR[1:0] = SW[1:0];
	
	wire Q;
	
	D_latch L0 (SW[1], SW[0], LEDG[0]);
	flippy_floppy F0 (SW[1], SW[0], LEDG[1]);
	flippy_floppy F1 (~SW[1], SW[0], LEDG[2]);
	
endmodule 