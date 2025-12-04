`timescale 1ns/1ps
module halfadderugptb;
	wire x,y;
	reg a,b;
halfadderugp uut(.x(x),.y(y),.a(a),.b(b));
	initial begin
		 $dumpfile("halfadderugp.vcd");
        $dumpvars(0,halfadderugptb);
	$monitor("time=%t|a=%b,b=%b|SUM=%b,CARRY=%b)",$time,a,b,x,y);
	a=0;b=0;#10;
	a=0;b=1;#10;
	a=1;b=0;#10;
	a=1;b=1;#10;
	$finish;
	end
endmodule
