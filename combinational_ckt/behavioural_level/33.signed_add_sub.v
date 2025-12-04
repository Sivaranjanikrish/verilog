module sigaddsubbl(A,B,S,Y);
	output reg signed[4:0] Y;
	input signed[3:0] A,B;
	input S;
	always @(*) begin
		if(S==1'b1)
			Y=A+B;
		else
			Y=A-B;
	end
	endmodule
