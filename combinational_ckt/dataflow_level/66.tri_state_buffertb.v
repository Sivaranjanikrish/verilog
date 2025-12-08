`timescale 1ns/1ps
module tristatebufferdftb;
	wire Y;
	reg A,EN;
tristatebufferdf uut(.EN(EN),.A(A),.Y(Y));
	initial begin
		 $dumpfile("tristatebufferdf.vcd");
        $dumpvars(0,tristatebufferdftb);
	$monitor("Time=%t|EN=%b|A=%b|Y=%b",$time,EN,A,Y);
	EN=0;A=1;#10;
	EN=1;A=0;#10;
	$finish;
end
endmodule
