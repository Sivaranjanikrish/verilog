module halfsub(x,y,a,b);
	output x,y;
	input a,b;
	assign x=a^b;
	assign y=~a&b;
endmodule

