module decod3to8ot(A2,A1,A0,D7,D6,D5,D4,D3,D2,D1,D0);
	output D7,D6,D5,D4,D3,D2,D1,D0;
	input A2,A1,A0;
	assign D0=(~A2&~A1&~A0);
	assign D1=(~A2&~A1&A0);
	assign D2=(~A2&A1&~A0);
	assign D3=(~A2&A1&A0);
	assign D4=(A2&~A1&~A0);
	assign D5=(A2&~A1&A0);
	assign D6=(A2&A1&~A0);
	assign D7=(A2&A1&A0);
endmodule
