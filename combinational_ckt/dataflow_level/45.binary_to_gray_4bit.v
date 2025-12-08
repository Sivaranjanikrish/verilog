module BtoG4bit(bin,gray);
	output[3:0] gray;
	input[3:0] bin;
	assign gray[3]=bin[3];
	assign gray[2]=bin[3]^bin[2];
	assign gray[1]=bin[2]^bin[1];
	assign gray[0]=bin[1]^bin[0];
endmodule
