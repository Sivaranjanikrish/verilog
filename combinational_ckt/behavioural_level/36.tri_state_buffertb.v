`timescale 1ns/1ps
module tristatebufferbltb;
	wire Y;
	reg A,EN;
tristatebufferbl uut(.EN(EN),.A(A),.Y(Y));
	initial begin
		 $dumpfile("tristatebufferbl.vcd");
        $dumpvars(0,tristatebufferbltb);
	$monitor("Time=%t|EN=%b|A=%b|Y=%b",$time,EN,A,Y);
	EN=0;A=1;#10;
	EN=1;A=1;#10;

	$finish;
end
endmodule

