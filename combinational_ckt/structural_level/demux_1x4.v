module demux1x4(Y0,Y1,Y2,Y3,D,S0,S1);
	output Y0,Y1,Y2,Y3;
	input D,S0,S1;	
	wire S0bar,S1bar;
	not(S0bar,S0);
	not(S1bar,S1);
	and(Y0,S1bar,S0bar,D);
	and(Y1,S1bar,S0,D);
	and(Y2,S1,S0bar,D);
	and(Y3,S1,S0,D);
endmodule
