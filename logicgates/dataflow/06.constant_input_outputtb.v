`timescale 1ns/1ps
module constantiotb;
	wire out;
	reg in;
	constantio uut(.in(in),.out(out));
	initial begin
		$dumpfile("constantio.vcd");
                $dumpvars(0,constantiotb);
               
		
		$monitor("Time=%t|input=%b|output=%b",$time,in,out);
		in=0; #10;
		in=1; #10;
		
		$finish;
	end
endmodule
