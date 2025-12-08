module maxtermdf(A,B,C,F);
    	output F;
	input A, B, C;
    	assign F = ((A |B | C) &(A | ~B | ~C) &(~A | B | C) &(~A | B | ~C));

endmodule

