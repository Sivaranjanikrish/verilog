module sigaddsubdf(A,B,S,Y);
	output signed[4:0]Y;
	input signed[3:0]A,B;
	input S;
	assign Y=S?(A+B):(A-B);
	endmodule
