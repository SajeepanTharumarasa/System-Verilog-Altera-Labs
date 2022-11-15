module multiplexers_array(x,y,s,m);
	 input [3:0]x;
	 input [3:0]y;
	 input s;
    output [3:0]m;
    
    wire [3:0]m;
	 
	 two_one_multiplexers M1(.x(x[0]), .y(y[0]), .s(s), .m(m[0]));
	 two_one_multiplexers M2(.x(x[1]), .y(y[1]), .s(s), .m(m[1]));
	 two_one_multiplexers M3(.x(x[2]), .y(y[2]), .s(s), .m(m[2]));
	 two_one_multiplexers M4(.x(x[3]), .y(y[3]), .s(s), .m(m[3]));
    
endmodule