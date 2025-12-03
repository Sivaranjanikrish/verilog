module nanoranor(a,b,c,d,e,f,g);
	output d,e,f,g;
	input a,b,c;
	assign d=a&b&c;
	assign e=a|b|c;
	assign f=~(a&b&c);
	assign g=~(a|b|c);
endmodule
