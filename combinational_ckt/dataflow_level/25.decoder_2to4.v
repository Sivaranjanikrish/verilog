module decod2to4ot(A1,A0,D0,D1,D2,D3);
	output D0,D1,D2,D3;
	input A1,A0;
	assign D0=~A1&~A0;
	assign D1=~A1&A0;
	assign D2=A1&~A0;	
	assign D3=A1&A0;
endmodule
