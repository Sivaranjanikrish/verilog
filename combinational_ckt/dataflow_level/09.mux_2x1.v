module mux2x1ot(y,I0,I1,s);
	output y;
	input I0,I1,s;
	assign y=(I0&~s)|(I1&s);
endmodule
