module BCDadderdf(sum,carry,A,B);
	output[3:0] sum,carry;
	input [3:0]A,B;
	wire [4:0] crctedsum,actualsum;
	assign actualsum=A+B;
	assign crctedsum=(actualsum>9)?(actualsum+5'b00110):actualsum;
	assign sum=crctedsum[3:0];
	assign carry=crctedsum[4];
endmodule

