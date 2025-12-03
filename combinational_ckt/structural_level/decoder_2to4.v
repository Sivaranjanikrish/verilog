module decoder2to4(A1,A0,D3,D2,D1,D0);
	output D3,D2,D1,D0;
	input 	A1,A0;
	wire A1bar,A0bar;
	not(A1bar,A1);
	not(A0bar,A0);
	and(D0,A1bar,A0bar);
	and(D1,A1bar,A0);
	and(D2,A1,A0bar);
	and(D3,A1,A0);
endmodule
