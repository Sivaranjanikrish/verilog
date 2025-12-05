`timescale 1ns/1ps
module halfaddertb;
	wire x,y;
	reg a,b;
halfadder uut(.x(x),.y(y),.a(a),.b(b));
	initial begin
		 $dumpfile("halfadder.vcd");
        $dumpvars(0,halfaddertb);
	$monitor("time=%t|a=%b,b=%b|SUM=%b,CARRY=%b)",$time,a,b,x,y);
	a=0;b=0;#10;
	a=0;b=1;#10;
	a=1;b=0;#10;
	a=1;b=1;#10;
	$finish;
	end
endmodule
