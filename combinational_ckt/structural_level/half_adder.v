module halfadderugp(x,y,a,b);
	output x,y;
	input a,b;
	xor(x,a,b);
	and(y,a,b);
endmodule
