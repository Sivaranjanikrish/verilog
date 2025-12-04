module encoder4to2(x,y,D0,D1,D2,D3);
	output x,y;
	input D0,D1,D2,D3;
	or(x,D1,D3);
	or(y,D2,D3);
endmodule
