`timescale 1ns/1ps
module norortb;
	wire x,y;
	reg a,b,c,d;
noror uut(.x(x),.y(y),.a(a),.b(b),.c(c),.d(d));
	initial begin
		$dumpfile("noror.vcd");
                $dumpvars(0,norortb);
		$monitor("time=%t|a=%b,b=%b,c=%b,d=%d|OR=%b,NOR=%b",$time,a,b,c,d,x,y);
		a=0;b=0;c=0;d=0;#10
		a=0;b=0;c=0;d=1;#10
		a=0;b=0;c=1;d=0;#10
		a=0;b=0;c=1;d=1;#10
		a=0;b=1;c=0;d=0;#10
		a=0;b=1;c=0;d=1;#10
		a=0;b=1;c=1;d=0;#10
		a=0;b=1;c=1;d=1;#10
		a=1;b=0;c=0;d=0;#10
		a=1;b=0;c=0;d=1;#10
	        a=1;b=0;c=1;d=0;#10
		a=1;b=0;c=1;d=1;#10
		a=1;b=1;c=0;d=0;#10
		a=1;b=1;c=0;d=1;#10
		a=1;b=1;c=1;d=0;#10
		a=1;b=1;c=1;d=1;#10
		
		$finish;
	end
endmodule

