`timescale 1ns/1ps
module naxornortb;
	wire c,d,e;
	reg a,b;
naxornor uut(.c(c),.d(d),.e(e),.b(b),.a(a));
	initial begin
	        $dumpfile("naxornor.vcd");
                $dumpvars(0,naxornortb);
		$monitor("time=%0t|a=%b,b=%b|NAND=%b,NOR=%b,XNOR=%b",$time,a,b,c,d,e);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		
		$finish;
	end
endmodule
