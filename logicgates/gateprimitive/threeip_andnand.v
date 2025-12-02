module nanand(x,y,a,b,c);
	output x,y;
	input a,b,c;
	and(x,a,b,c);
	nand(y,a,b,c);
endmodule
