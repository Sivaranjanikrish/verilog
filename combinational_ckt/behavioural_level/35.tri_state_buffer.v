module tristatebufferbl (A,EN,Y);
	output reg Y;
	input A,EN;
	always@(*) begin
	if(EN==1'b1)
		Y=A;
	else
		Y=1'bz;
	end
endmodule
	
