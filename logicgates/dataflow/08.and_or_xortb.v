module aoxortb;
	wire c,d,e;
	reg a,b;
	aoxor uut(c,d,e,a,b);
	initial begin
	$dumpfile("aoxor.vcd");
         $dumpvars(0,aoxortb);
	$monitor("time=%0t|a=%b,b=%b|AND=%b,OR=%b,XOR=%b",$time,a,b,c,d,e);
	 		 a=0;b=0;#10;
			  a=0;b=1;#10;
			   a=1;b=0;#10;
			    a=1;b=1;#10;
			    $finish;
	end
endmodule
