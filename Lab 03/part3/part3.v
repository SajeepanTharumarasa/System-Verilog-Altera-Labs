// flipflop

module part3 (SW, LEDR,LEDG);

	input [1:0] SW;
	output [1:0] LEDR, LEDG;
	
	assign LEDR = SW;
	
	wire Q;
	
	flippy_floppy F0 (SW[1], SW[0], LEDG[0]);
	
endmodule 

