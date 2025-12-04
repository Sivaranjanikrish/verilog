`timescale 1ns/1ps
module halfsubugptb;
	wire x,y;
	reg a,b;
halfsubugp uut(.x(x),.y(y),.a(a),.b(b));
	initial begin
		$dumpfile("halfsubugp.vcd");
        $dumpvars(0,halfsubugptb);
	$monitor("time=%t|a=%b,b=%b|DIFF=%b,BORROW=%b)",$time,a,b,x,y);
	a=0;b=0;#10;
	a=0;b=1;#10;
	a=1;b=0;#10;
	a=1;b=1;#10;
	
	$finish;
	end
endmodule

