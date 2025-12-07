//AGB=A greater than B
//AEB=A equal to B
//ALB=A less than B
module magc1bit(AGB,AEB,ALB,A,B);
	output AGB,AEB,ALB;
	input A,B;
	assign AGB=A&~B;
	assign AEB=(~A&~B)|(A&B);
	assign ALB=~A&B;
endmodule
