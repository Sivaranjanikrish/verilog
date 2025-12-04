module BCDtoEX3bl(BCD,EX3);
	output reg[3:0]EX3;
	input[3:0]BCD;
	always@(*) begin
		if (BCD<=4'b1001)
			EX3=BCD+4'B0011;
		else
			EX3=4'b0000;
end
endmodule
