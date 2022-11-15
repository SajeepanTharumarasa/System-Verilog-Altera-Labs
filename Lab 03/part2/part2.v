module part2(SW,LEDR,LEDG);

	input[1:0]SW;
	output [1:0] LEDR, LEDG;
	
	assign LEDR = SW;
	
	wire Q;
	
	flippy_floppy D0 (SW[0],SW[1], LEDG[0]);
	
endmodule 
