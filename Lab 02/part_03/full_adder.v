module full_adder(a,b,ci,s,c0);

		input a,b,ci;
		output s,c0;
		
		wire d;
		
		assign d = a^b;
		assign s = d^ci;
		assign c0 = (b & ~d) | (d & ci);

endmodule
