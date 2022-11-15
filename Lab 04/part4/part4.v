module part4 (CLOCK_50, HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0, LEDR, KEY);

	input CLOCK_50;
	input [3:0] KEY;
	output [15:0] LEDR;
	output [0:6] HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0;
	
	wire [25:0] Q;
	wire [15:0] Q2;
	reg Clr, Clr2;
	
	counter_26bit C0 (1, CLOCK_50, Clr, Q);
	counter_26bit DISPLAY (1, Clr, Clr2, Q2);
	
	always @(negedge CLOCK_50) begin
		if(Q>= 50000000) begin
			Clr = 1;
		end
		else begin
			Clr = 0;
		end
	end
	
	always @ (negedge Clr) 
	begin
		if(Q2 >=9) begin
			Clr2 = 1;
		end
		else begin
			Clr2 = 0;
		end
	end
	
	t_flipflop T0(1, Clr, 0, LEDR[0]);
	
	b2d_ssd H0(Q2[3:0], HEX0);
	
endmodule

	
	