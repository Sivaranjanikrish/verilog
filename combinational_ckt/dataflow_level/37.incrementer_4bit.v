module inc4bitdf(sum,A);
	output[4:0] sum;
	input[3:0]A;
	assign sum=A+4'b0001;
endmodule

