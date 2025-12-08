module tristatebufferdf (A,EN,Y);
	output  Y;
	input A,EN;
	assign Y=(EN)?A:1'bz;
endmodule
	
