module three_one_multiplexers(s0,s1,u,v,w,m);
		input s0,s1,u,v,w;
		output m;
		wire z;

		two_one_multiplexers M1(.x(u), .y(v), .s(s0), .m(z));
		two_one_multiplexers M2(.x(z), .y(w), .s(s1), .m(m));

endmodule 