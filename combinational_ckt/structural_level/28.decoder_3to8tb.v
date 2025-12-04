`timescale 1ns/1ps
module decoder3to8tb;
	wire D0,D1,D2,D3,D4,D5,D6,D7;
	reg A2,A1,A0;
decoder3to8 uut(.A2(A2),.A1(A1),.A0(A0),.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7));
	initial begin
		$dumpfile("decoder3to8.vcd");
        $dumpvars(0,decoder3to8tb);
	$monitor("Time=%t|A2=%b,A1=%b,A0=%b|D0=%b,D1=%b,D2=%b,D3=%b,D4=%b,D5=%b,D6=%b,D7=%b",$time,A2,A1,A0,D0,D1,D2,D3,D4,D5,D6,D7);
	A2=0;A1=0;A0=0;#10;
	A2=0;A1=0;A0=1;#10;
	A2=0;A1=1;A0=0;#10;
	A2=0;A1=1;A0=1;#10;
	A2=1;A1=0;A0=0;#10;
	A2=1;A1=0;A0=1;#10;
	A2=1;A1=1;A0=0;#10;
	A2=1;A1=1;A0=1;#10;
	
	$finish;
end 
endmodule
