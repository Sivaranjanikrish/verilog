module noror(x,y,a,b,c,d);
	output x,y;
	input a,b,c,d;
	or(x,a,b,c,d);
	nor(y,a,b,c,d);
endmodule
