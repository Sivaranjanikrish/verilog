module rca4bitdf(sum,cout,A,B,Cin);
	output[3:0]sum;
	output cout;
	input[3:0] A,B;
	input Cin;
	wire c1,c2,c3;
	assign sum[0]=A[0]^B[0]^Cin;
	assign c1=(A[0]&B[0])|(B[0]&Cin)|(Cin&A[0]);
	assign sum[1]=A[1]^B[1]^c1;
	assign c2=(A[1]&B[1])|(B[1]&c1)|(c1&A[1]);
	assign sum[2]=A[2]^B[2]^c2;
	assign c3=(A[2]&B[2])|(B[2]&c2)|(c2&A[2]);
	assign sum[3]=A[3]^B[3]^c3;
	assign cout=(A[3]&B[3])|(B[3]&c3)|(c3&A[3]);
	endmodule
