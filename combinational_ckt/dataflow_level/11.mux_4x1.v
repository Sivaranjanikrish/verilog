module mux4x1ot(y,I0,I1,I2,I3,S1,S0);
	output y;
	input I0,I1,I2,I3,S1,S0;
	assign y=(~S1&~S0&I0)|(~S1&S0&I1)|(S1&~S0&I2)|(S1&S0&I3);
endmodule
