`timescale 1 ns / 1 ps 
module fullsubtb;
	wire x,y;
	reg a,b,c;
	fullsub uut(.x(x),.y(y),.a(a),.b(b),.c(c));
	initial begin
		$dumpfile("fullsub.vcd");
        $dumpvars(0,fullsubtb);
	 $monitor("time=%0t|A=%b B=%b C=%b|DIFF=%b BORROW=%b",$time,a,b,c,x,y);
	 a=0;b=0;c=0; #10;
	a=0;b=0;c=1; #10;
	 a=0;b=1;c=0;#10;
	 a=0;b=1;c=1;#10;
	 a=1;b=0;c=0;#10;
	 a=1;b=0;c=1;#10;
	 a=1;b=1;c=0;#10;
	a=1;b=1;c=1;#10;
	$finish;
	
	end
endmodule

