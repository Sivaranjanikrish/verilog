module paritygen(x,y,a,b,c);
	output x,y;
	input a,b,c;
	assign x=a^b^c;
	assign y=~(a^b^c);
endmodule

