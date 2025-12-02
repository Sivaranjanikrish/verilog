`timescale 1ns/1ps
module basicgatestb;
	wire p,q,r,s,t,u;
	reg a,b;
basicgates uut(.p(p),.q(q),.r(r),.s(s),.t(t),.u(u),.a(a),.b(b));
	initial begin
		     $dumpfile("basicgates.vcd");
                $dumpvars(0,basicgatestb);
		$monitor("time=%t|a=%b,b=%b|AND=%b,OR=%b,XOR=%b,NAND=%b,NOR=%b,XNOR=%b",$time,a,b,p,q,r,s,t,u);
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		$finish;
	end
endmodule
