module two_one_multiplexers(s,m,x,y);

	 input x;
	 input y;
	 input s;
    output m;
    
    wire m;
    
    assign m = (~s & x) | (s & y);
	 

endmodule