`timescale 1ns/1ps
module encoder4to2tb;
	wire x,y;
	reg D0,D1,D2,D3;
encoder4to2 uut(.x(x),.y(y),.D0(D0),.D1(D1),.D2(D2),.D3(D3));
	initial begin
		$dumpfile("encoder4to2.vcd");
           $dumpvars(0,encoder4to2tb);
	$monitor("Time=%t|X=%b,Y=%b|D0=%b,D1=%b,D2=%b,D3=%b",$time,x,y,D0,D1,D2,D3);
	D3=0;D2=0;D1=0;D0=1; #10;
	 D3=0;D2=0;D1=1;D0=0; #10;
	  D3=0;D2=1;D1=0;D0=0; #10;
	   D3=1;D2=0;D1=0;D0=0; #10;

	   $finish;
   end 
   endmodule
	
