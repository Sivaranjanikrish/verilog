module decoder3to8(A2,A1,A0,D7,D6,D5,D4,D3,D2,D1,D0);
	output D7,D6,D5,D4,D3,D2,D1,D0;
	input 	A2,A1,A0;
	wire A2bar,A1bar,A0bar;
	not(A2bar,A2);
	not(A1bar,A1);
	not(A0bar,A0);
	and(D0,A2bar,A1bar,A0bar);
	and(D1,A2bar,A1bar,A0);
	and(D2,A2bar,A1,A0bar);
	and(D3,A2bar,A1,A0);
	and(D4,A2,A1bar,A0bar);
	and(D5,A2,A1bar,A0);
	and(D6,A2,A1,A0bar);
	and(D7,A2,A1,A0);
endmodule
