module noror(x,y,a,b,c,d);
	output x, y;
	input a,b,c,d;
	assign x=a|b|c|d;
 	assign y=~(a|b|c|d);
endmodule
