//AGB=A greater than B
//AEB=A equal to B
//ALB=A less than B
module magc2bit(AGB,AEB,ALB,A,B);
	output AGB,AEB,ALB;
	input [1:0] A,B;
	assign AGB= A>B;
	assign AEB= A==B;
	assign ALB= A<B;
endmodule
