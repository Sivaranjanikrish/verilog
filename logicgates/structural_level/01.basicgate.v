module basicgates(p,q,r,s,t,u,a,b);
	output p,q,r,s,t,u;
	input a,b;
	and(p,a,b);
	or(q,a,b);
	xor(r,a,b);
	nand(s,a,b);
	nor(t,a,b);
	xnor(u,a,b);
endmodule
