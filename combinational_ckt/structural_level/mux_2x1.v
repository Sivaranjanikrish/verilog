module mux2x1(y,I0,I1,s0);
	output y;
	input I0,I1,s0;
	wire s0bar,w1,w2;
	not(s0bar,s0);
	and(w1,I0,s0bar);
	and(w2,I1,s0);
	or(y,w1,w2);
endmodule
