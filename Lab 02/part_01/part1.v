module part1 (sw, HEX0,HEX1,HEX2,HEX3);
		
		input [17:0]sw;
		output [0:6] HEX0,HEX1,HEX2,HEX3;
		
		b2d_7seg B0 (sw[3:0], HEX0);
		b2d_7seg B1 (sw[7:4], HEX1);
		b2d_7seg B2 (sw[11:8], HEX2);
		b2d_7seg B3 (sw[15:12], HEX3);
		
		
endmodule 