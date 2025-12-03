module encoder8to3(x,y,z,D0,D1,D2,D3,D4,D5,D6,D7);
	output x,y,z;
	input D0,D1,D2,D3,D4,D5,D6,D7;
	or(z,D4,D5,D6,D7);
	or(y,D2,D3,D6,D7);
	or(z,D1,D3,D5,D7);
endmodule

