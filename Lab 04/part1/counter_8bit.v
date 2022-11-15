module counter_8bit (En,Clk, Clr,Q);

	input En, Clk, Clr;
	output [7:0] Q;
	
	wire [7:0] T, Qs;
	
	t_flipflop T0(En,Clk,Clr,Qs[0]);
	assign T[0] = En & Qs[0];
	
	t_flipflop T1(En,Clk,Clr,Qs[1]);
	assign T[1] = En & Qs[1];
	
	t_flipflop T2(En,Clk,Clr,Qs[2]);
	assign T[2] = En & Qs[2];
	
	t_flipflop T3(En,Clk,Clr,Qs[3]);
	assign T[3] = En & Qs[3];
	
	t_flipflop T4(En,Clk,Clr,Qs[4]);
	assign T[4] = En & Qs[4];
	
	t_flipflop T5(En,Clk,Clr,Qs[5]);
	assign T[5] = En & Qs[5];
	
	t_flipflop T6(En,Clk,Clr,Qs[6]);
	assign T[6] = En & Qs[6];
	
	t_flipflop T7(En,Clk,Clr,Qs[7]);
	assign T[7] = En & Qs[7];
	
	assign Q = Qs;
	
endmodule 
	
	
	
	
	