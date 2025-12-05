module demux1x4ot(Y0,Y1,Y2,Y3,D,S0,S1);
	output Y0,Y1,Y2,Y3;
	input D,S0,S1;
	assign Y0=(D&~S1&~S0);
	assign Y1=(D&~S1&S0);
	assign Y2=(D&S1&~S0);
	assign Y3=(D&S1&S0);
endmodule
