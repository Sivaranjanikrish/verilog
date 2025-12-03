module rca4bitbl(sum,cout,A,B,Cin);
	output reg[3:0]sum;
	output reg cout;
	input [3:0] A,B;
	input Cin;
	reg [4:1] temp;
	always @(*) begin
		temp=A+B+Cin;
		sum=temp[3:0];
		cout=temp[4];
			end
endmodule
