module mux8x1(Y,I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2);
	output Y;
	input I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2;
	wire S0bar,S1bar,S2bar,W1,W2,W3,W4,W5,W6,W7,W8;
	not(S2bar,S2);
	not(S1bar,S1);
	not(S0bar,S0);
	and(W1,I0,S2bar,S1bar,S0bar);
	and(W2,I1,S2bar,S1bar,S0);
  	and(W3,I2,S2bar,S1,S0bar);
  	and(W4,I3,S2bar,S1,S0);
  	and(W5,I4,S2,S1bar,S0bar);
  	and(W6,I5,S2,S1bar,S0);
  	and(W7,I6,S2,S1,S0bar);
  	and(W8,I7,S2,S1,S0);
	or(Y,W1,W2,W3,W4,W5,W6,W7,W8);
endmodule

