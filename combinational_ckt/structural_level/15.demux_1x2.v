module demux1x2(Y0,Y1,D,S0);
	output Y0,Y1;
	input D,S0;
	wire S0bar;
	not(S0bar,S0);
	and(Y0,D,S0bar);
	and(Y1,D,S0);
endmodule

