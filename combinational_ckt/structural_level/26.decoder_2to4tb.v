`timescale 1ns/1ps
module decoder2to4tb;
	wire D0,D1,D2,D3;
	reg A1,A0;
decoder2to4 uut(.A1(A1),.A0(A0),.D0(D0),.D1(D1),.D2(D2),.D3(D3));
	initial begin
		$dumpfile("decoder2to4.vcd");
        $dumpvars(0,decoder2to4tb);
	$monitor("Time=%t|A1=%b,A0=%b|D0=%b,D1=%b,D2=%b,D3=%b",$time,A1,A0,D0,D1,D2,D3);
	A1=0;A0=0; #10;
	A1=0;A0=1; #10;
	A1=1;A0=0; #10;
	A1=1;A0=1; #10;
		$finish;
end 
endmodule
