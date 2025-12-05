module evenparitygenbl(in,out);
	output reg out;
	input[3:0]in;
	always @(*) begin
		out=^in;
	end
	endmodule
