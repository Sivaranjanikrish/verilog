`timescale 1 ns/1 ps
module paritygentb;
	wire x,y;
	reg a,b,c;
paritygen uut(.x(x),.y(y),.a(a),.b(b),.c(c));
	initial begin
		 $dumpfile("paritygen.vcd");
                $dumpvars(0,paritygentb);
		$monitor("time=%t|a=%b,b=%b,c=%b|EVEN_PARITY=%b,ODD_PARITY=%b",$time,a,b,c,x,y);
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
