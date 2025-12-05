`timescale 1ns/1ps
module demux1x2ottb;
	wire Y0,Y1;
	reg D,S0;
demux1x2ot uut(.S0(S0),.D(D),.Y0(Y0),.Y1(Y1));
	initial begin
 $dumpfile("demux1x2ot.vcd");
        $dumpvars(0, demux1x2ottb);
	$monitor("Time=%t|S0=%b,D=%b|Y0=%b,Y1=%b",$time,S0,D,Y0,Y1);
	D=0;S0=0; #10;
	D=1;S0=0; #10;
	D=0;S0=1; #10;
	D=1;S0=1; #10;
 
$finish;
end
endmodule

