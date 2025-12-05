module encod8to3ot(Y2,Y1,Y0,D7,D6,D5,D4,D3,D2,D1,D0);
	output Y2,Y1,Y0;
	input D7,D6,D5,D4,D3,D2,D1,D0;
	assign Y2=(D4|D5|D6|D7);
	assign Y1=(D2|D3|D6|D7);
	assign Y0=(D1|D3|D5|D7);
endmodule
