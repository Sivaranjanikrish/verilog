module dec4bitdf(diff,A);
	output[4:0] diff;
	input[3:0]A;
	assign diff=A-4'b0001;
endmodule

