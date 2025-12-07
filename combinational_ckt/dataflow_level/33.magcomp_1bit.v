module magc1bit(AGB,AEB,ALB,A,B);
	output AGB,AEB,ALB;
	input A,B;
	assign AGB=A&~B;
	assign AEB=(~A&~B)|(A&B);
	assign ALB=~A&B;
endmodule
