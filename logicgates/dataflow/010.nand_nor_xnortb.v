`timescale 1ns/1ps
module nanoranortb;
	wire d,e,f,g;
	reg a,b,c;
nanoranor uut(.d(d),.e(e),.f(f),.g(g),.a(a),.b(b),.c(c));
	initial begin
		$dumpfile("nanoranor.vcd");
        $dumpvars(0,nanoranortb);
	$monitor("time=%t|a=%b,b=%b,c=%b|AND=%b,OR=%b,NAND=%b,NOR=%b",$time,a,b,c,d,e,f,g);
        a=0;b=0;c=0;#10
	a=0;b=0;c=1;#10
	a=0;b=1;c=0;#10
	a=0;b=1;c=1;#10
	a=1;b=0;c=0;#10
	a=1;b=0;c=1;#10
	a=1;b=1;c=0;#10
	a=1;b=1;c=1;#10

	$finish;
	end
endmodule
