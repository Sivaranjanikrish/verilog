module BCDtoEX3df(BCD,EX3);
	output[3:0]EX3;
	input[3:0]BCD;
	assign EX3=(BCD<=4'b1001)?(BCD+4'b0011):4'b0000;
	endmodul
