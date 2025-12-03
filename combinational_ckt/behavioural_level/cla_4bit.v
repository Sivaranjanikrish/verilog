module cla4bitbl(A,B,Cin,sum,cout);
	input[3:0] A,B;
	input Cin;
	output reg [3:0] sum;
	output reg cout;	
	reg[3:0] P,G;
	reg c1,c2,c3;
	always@(*) begin
	P=A^B;
	G=A&B;
	c1=G[0]|P[0]&Cin;
	c2=G[1]|P[1]&c1;
	c3=G[2]|P[2]&c2;
	cout=G[3]|P[3]&c3;
	sum[0]=P[0]^Cin;
	sum[1]=P[1]^c1;
	sum[2]=P[2]^c2;
	sum[3]=P[3]^c3;
end
endmodule

