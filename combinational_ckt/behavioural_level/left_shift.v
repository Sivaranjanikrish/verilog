module lftsftbl(A,Y);
	output reg[4:0]Y;
	input[3:0]A;
	always@(*)begin
	Y=A<<1;
end
endmodule
