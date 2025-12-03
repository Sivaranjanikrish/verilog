`timescale 1 ns / 1 ps 
module fulladderugptb;
	wire x,y;
	reg a,b,c;
	fulladderugp uut(.x(x),.y(y),.a(a),.b(b),.c(c));
	initial begin
		 $dumpfile("fulladderugp.vcd");
        $dumpvars(0,fulladderugptb);
	 $monitor("time=%0t|A=%b B=%b C=%b|SUM=%b,CARRY=%b",$time,a,b,c,x,y);
	 a=0;b=0;c=0;#10;
	 a=0;b=0;c=1;#10;
	 a=0;b=1;c=0;#10;
	a=0;b=1;c=1;#10;
	a=1;b=0;c=0;#10;
	a=1;b=0;c=1;#10;
	a=1;b=1;c=0;#10;
	 a=1;b=1;c=1;#10;
	

	$finish;	
end
endmodule

