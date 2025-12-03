module fullsubugp(x,y,a,b,c);
	output x,y;
	input a,b,c;
	xor(w1,a,b);
	xor(x,w1,c);
	and(w2,~a,b);
	and(w3,w1,~c);
	or(y,w2,w3);
endmodule
