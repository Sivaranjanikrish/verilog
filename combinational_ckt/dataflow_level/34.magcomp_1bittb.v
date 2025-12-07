`timescale 1ns/1ps
module magc1bittb;
	wire AGB,AEB,ALB;
	reg A,B;
magc1bit uut (.AGB(AGB),.AEB(AEB),.ALB(ALB),.A(A),.B(B));
	initial begin
		$dumpfile("magc1bit.vcd");
        $dumpvars(0,magc1bittb);
	$monitor("Time=%t|AGB=%b,AEB=%b,ALB=%b|A=%b,B=%b",$time,AGB,AEB,ALB,A,B);
	A=0;B=0;#10;
	A=0;B=1;#10;	
	A=1;B=0;#10;
	A=1;B=1;#10;
	$finish;
end 
endmodule

