module mux4x1(y,I0,I1,I2,I3,S1,S0);
	output y;
	input I0,I1,I2,I3,S1,S0;
	wire S0bar,S1bar,w1,w2,w3,w4;
	not(S0bar,S0);
	not(S1bar,S1);
	and(w1,I0,S1bar,S0bar);
	and(w2,I1,S1bar,S0);
	and(w3,I2,S1,S0bar);
	and(w4,I3,S1,S0);
	or(y,w1,w2,w3,w4);
endmodule
