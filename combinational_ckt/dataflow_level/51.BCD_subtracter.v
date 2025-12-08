module BCDsubdf(borrow,diff,A,B);
	output[3:0] borrow,diff;
	input[3:0]A,B;
	wire[4:0] crcteddiff,actualdiff;
	assign actualdiff=A-B;
	assign crcteddiff=(actualdiff[4]==1)?(actualdiff+5'b01010):actualdiff;
	assign diff=crcteddiff[3:0];
	assign borrow=actualdiff[4];
endmodule
