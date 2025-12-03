module demux1x8(Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,D,S2,S1,S0);
	output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
	input D,S2,S1,S0;
	wire S2bar,S1bar,S0bar;
	not(S2bar,S2);
	not(S1bar,S1);
	not(S0bar,S0);
	and(Y0,S2bar,S1bar,S0bar);
	and(Y1,S2bar,S1bar,S0);
	and(Y2,S2bar,S1,S0bar);
	and(Y3,S2bar,S1,S0);
	and(Y4,S2,S1bar,S0bar);
	and(Y5,S2,S1bar,S0);
	and(Y6,S2,S1,S0bar);
	and(Y7,S2,S1,S0);
endmodule
