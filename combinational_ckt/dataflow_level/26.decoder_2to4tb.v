`timescale 1ns/1ps
module decod2to4ottb;
	wire D0,D1,D2,D3;
	reg A1,A0;
decod2to4ot uut(.A1(A1),.A0(A0),.D0(D0),.D1(D1),.D2(D2),.D3(D3));
	initial begin
		$dumpfile("decod2to4ot.vcd");
        $dumpvars(0,decod2to4ottb);
	$monitor("Time=%t|A1=%b,A0=%b|D0=%b,D1=%b,D2=%b,D3=%b",$time,A1,A0,D0,D1,D2,D3);
	A1=0;A0=0; #10;
	A1=0;A0=1; #10;
	A1=1;A0=0; #10;
	A1=1;A0=1;#10;
	$finish;
end 
endmodule

