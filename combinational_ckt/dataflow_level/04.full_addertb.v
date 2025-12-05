`timescale 1 ns / 1 ps 
module fulladdertb;
	wire x,y;
	reg a,b,c;
	fulladder uut(.x(x),.y(y),.a(a),.b(b),.c(c));
	initial begin
		 $dumpfile("fulladder.vcd");
        $dumpvars(0,fulladdertb);
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


