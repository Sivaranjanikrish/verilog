module inc4bitbl(A,Y);
	output reg[4:0] Y;
	input [3:0]A;
always @(*)begin
	Y=A+4'b0001;
	end
endmodule
