module demux1x2ot(Y1,Y0,S0,D);
	output Y1,Y0;
	input S0,D;
	assign Y0=~S0&D;
	assign Y1=S0&D;
endmodule
