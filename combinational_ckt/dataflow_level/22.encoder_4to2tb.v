`timescale 1ns/1ps
module encod4to2ottb;
	wire Y1,Y0;
	reg D0,D1,D2,D3;
encod4to2ot uut(.Y1(Y1),.Y0(Y0),.D0(D0),.D1(D1),.D2(D2),.D3(D3));
	initial begin
		 $dumpfile("encod4to2ot.vcd");
           $dumpvars(0,encod4to2ottb);
	$monitor("Time=%t|Y1=%b,Y0=%b|D0=%b,D1=%b,D2=%b,D3=%b",$time,Y1,Y0,D0,D1,D2,D3);
	D3=0;D2=0;D1=0;D0=1; #10;
	 D3=0;D2=0;D1=1;D0=0; #10;
	  D3=0;D2=1;D1=0;D0=0; #10;
	   D3=1;D2=0;D1=0;D0=0; #10;
	   $finish;
   end 
   endmodule
	

