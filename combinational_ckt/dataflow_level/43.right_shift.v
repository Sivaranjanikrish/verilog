module rytsftdf(A,Y);
	output [4:0]Y;
	input[3:0]A;
	assign Y=A>>1;

endmodule

